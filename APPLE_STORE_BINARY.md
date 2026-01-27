# iOS: Create IPA for Apple App Store

This document explains how to create a release build (IPA) for publishing to the Apple App Store from this Flutter project.

Quick overview

- Bump version in `pubspec.yaml`
- Set up an Apple Developer account and create App ID, provisioning profile, and certificates
- Configure Xcode project settings
- Build the IPA with `flutter build ipa`
- Upload to App Store Connect via Xcode or `xcrun altool`
- Submit for review in App Store Connect

1. Bump version

- Open [pubspec.yaml](pubspec.yaml) and update the `version:` line to the new version and build number. Example:

```
version: 1.0.1+2
```

Note: The part before `+` becomes `CFBundleShortVersionString` and the number after `+` becomes `CFBundleVersion` when building for iOS.

2. Prerequisites

- A Mac with Xcode installed (latest stable recommended)
- An Apple Developer Program membership ($99/year) — required for App Store distribution
- CocoaPods installed (`sudo gem install cocoapods` or `brew install cocoapods`)

3. Create App ID and certificates

In the [Apple Developer Portal](https://developer.apple.com/account):

**Step A:** Create an App ID

- Go to Certificates, Identifiers & Profiles > Identifiers
- Click `+` and select "App IDs"
- Set the Bundle ID to match your Xcode project (e.g., `com.example.bitswitch`)
- Enable any required capabilities (e.g., Access WiFi Information for this app)

**Step B:** Create a Distribution Certificate

- Go to Certificates > click `+`
- Select "Apple Distribution"
- Follow the instructions to create a Certificate Signing Request (CSR) from Keychain Access
- Download and double-click the certificate to install it in your Keychain

**Step C:** Create a Provisioning Profile

- Go to Profiles > click `+`
- Select "App Store Connect" under Distribution
- Select your App ID and Distribution Certificate
- Download and double-click the profile to install it

Alternatively, use Xcode's "Automatically manage signing" to handle certificates and profiles.

4. Configure Xcode project

Open the iOS project in Xcode:

```bash
open ios/Runner.xcworkspace
```

Verify the following settings under Runner > Signing & Capabilities:

- **Team:** Your Apple Developer team
- **Bundle Identifier:** Matches your App ID (e.g., `com.example.bitswitch`)
- **Signing (Release):** Uses your distribution certificate and provisioning profile, or enable "Automatically manage signing"

**Required capabilities for Bit Switch:**

- Access WiFi Information (for SSID detection)

Ensure these are enabled in both the Apple Developer portal App ID and the Xcode project.

5. Install CocoaPods dependencies

```bash
cd ios && pod install && cd ..
```

6. Build the IPA

```bash
flutter clean
flutter pub get
flutter build ipa --release
```

The generated IPA and export archive are at:

```bash
build/ios/ipa/bit_switch.ipa
build/ios/archive/Runner.xcarchive
```

If automatic signing fails, you can specify an export options plist:

```bash
flutter build ipa --release --export-options-plist=ios/ExportOptions.plist
```

Example `ios/ExportOptions.plist`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN"
 "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>method</key>
    <string>app-store-connect</string>
    <key>teamID</key>
    <string>YOUR_TEAM_ID</string>
    <key>uploadBitcode</key>
    <false/>
    <key>uploadSymbols</key>
    <true/>
</dict>
</plist>
```

7. Upload to App Store Connect

**Option A: Using Xcode**

1. Open the archive: `open build/ios/archive/Runner.xcarchive`
2. In Xcode's Organizer (Window > Organizer), select the archive
3. Click "Distribute App"
4. Choose "App Store Connect" > "Upload"
5. Follow the prompts to validate and upload

**Option B: Using the Transporter app**

1. Download [Transporter](https://apps.apple.com/app/transporter/id1450874784) from the Mac App Store
2. Drag and drop the `.ipa` file into Transporter
3. Click "Deliver"

**Option C: Using command line**

```bash
xcrun altool --upload-app \
  --type ios \
  --file build/ios/ipa/bit_switch.ipa \
  --apiKey YOUR_API_KEY \
  --apiIssuer YOUR_ISSUER_ID
```

To use API key authentication, create an App Store Connect API key at [App Store Connect > Users and Access > Integrations](https://appstoreconnect.apple.com/access/integrations/api).

8. Submit for review in App Store Connect

1. Go to [App Store Connect](https://appstoreconnect.apple.com)
1. Select your app (create it first if needed — use the same Bundle ID)
1. Under the App Store tab, fill in:
   - App screenshots (see `App Store/iOS Screenshots/` for assets)
   - Description, keywords, support URL, and other metadata
   - Select the uploaded build
   - Set pricing and availability
1. Click "Submit for Review"

1. Checklist & tips

- Do NOT commit signing certificates, provisioning profiles, or `ExportOptions.plist` with team-specific info to source control.
- Ensure the Bundle ID in Xcode matches the App ID in the Apple Developer portal.
- Test on a real iOS device before submitting — the simulator does not support all capabilities (e.g., Wi-Fi scanning).
- Ensure location permission prompts and `NSLocationWhenInUseUsageDescription` are set in `ios/Runner/Info.plist` (required for Wi-Fi SSID access on iOS).
- Each build number (`+N` in the version) must be unique per version uploaded to App Store Connect. Increment it for every upload.
- App Review typically checks for IPv6 compatibility, proper permission descriptions, and privacy policy links.

10. Common commands summary

```bash
# Install dependencies
flutter pub get

# Install iOS pods
cd ios && pod install && cd ..

# Build release IPA
flutter build ipa --release

# Open archive in Xcode for upload
open build/ios/archive/Runner.xcarchive

# Clean build artifacts
flutter clean
```

11. Where to edit next

- Update the `version:` in [pubspec.yaml](pubspec.yaml) before building.
- Update `ios/Runner/Info.plist` for permission descriptions and app metadata.
- Add screenshots to App Store Connect (assets in `App Store/iOS Screenshots/`).

---

## Troubleshooting

### Error: "No signing certificate found" or "No provisioning profile"

**Cause:** Xcode cannot find a valid distribution certificate or provisioning profile.

**Fix:**

1. Open Xcode and go to Preferences > Accounts, ensure your Apple ID is added
2. Select your team and click "Download Manual Profiles"
3. Or enable "Automatically manage signing" in the Runner target
4. Verify your Apple Developer membership is active

### Error: "The bundle identifier cannot be changed from the current value"

**Cause:** The Bundle ID in Xcode doesn't match what's registered in App Store Connect.

**Fix:**

- Ensure the Bundle ID in `ios/Runner.xcodeproj/project.pbxproj` matches your App ID exactly
- If you've already created the app in App Store Connect, you cannot change its Bundle ID

### Error: "Missing compliance information"

After uploading, App Store Connect may ask about export compliance (encryption).

**Fix:**

- Add this key to `ios/Runner/Info.plist` to skip the manual question:

```xml
<key>ITSAppUsesNonExemptEncryption</key>
<false/>
```

This is appropriate if your app only uses HTTPS (standard encryption exemption).

### Error: "Pod install" fails

```bash
cd ios
pod deintegrate
pod cache clean --all
pod install
cd ..
```

If issues persist, delete `ios/Podfile.lock` and retry.
