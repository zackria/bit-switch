# Android: Create App Bundle (AAB) for Play Store

This document explains how to create a release-signed Android App Bundle (AAB) for publishing to the Google Play Store from this Flutter project.

Quick overview

- Bump version in `pubspec.yaml`
- Create a signing keystore and `android/key.properties` (do NOT commit the keystore)
- Add signing config to your Android Gradle config
- Build the AAB with `flutter build appbundle --release`
- (Optional) Test the AAB locally with `bundletool`
- Upload the AAB to Google Play Console

1. Bump version

- Open [pubspec.yaml](pubspec.yaml) and update the `version:` line to the new version and build number. Example:

```
version: 1.0.1+2
```

Note: The part before `+` becomes `versionName` and the number after `+` becomes `versionCode` when building for Android.

2. Create a signing keystore
   Generate a release keystore (keep this file private and backed up):

```bash
keytool -genkeypair -v \
  -keystore ~/my-release-key.jks \
  -alias app-key-alias \
  -keyalg RSA -keysize 2048 -validity 9125
```

3. Add `key.properties` (do NOT commit)
   Create `android/key.properties` and add it to your `.gitignore`. Example contents:

```
storePassword=YOUR_STORE_PASSWORD
keyPassword=YOUR_KEY_PASSWORD
keyAlias=app-key-alias
storeFile=/absolute/path/to/my-release-key.jks
```

4. Add signing config to Gradle

**IMPORTANT:** The default Flutter `build.gradle.kts` uses debug signing for release builds:
```kotlin
signingConfig = signingConfigs.getByName("debug")  // This causes the Play Store error!
```

You must change this to use a release signing config.

Edit `android/app/build.gradle.kts`:

**Step A:** Add this after the `plugins { }` block (at the top of the file):

```kotlin
val keystorePropertiesFile = rootProject.file("key.properties")
val keystoreProperties = java.util.Properties().apply {
    if (keystorePropertiesFile.exists()) {
        load(keystorePropertiesFile.inputStream())
    }
}
```

**Step B:** Add this inside the `android { }` block, BEFORE the `buildTypes` section:

```kotlin
signingConfigs {
    create("release") {
        storeFile = file(keystoreProperties["storeFile"] as String)
        storePassword = keystoreProperties["storePassword"] as String
        keyAlias = keystoreProperties["keyAlias"] as String
        keyPassword = keystoreProperties["keyPassword"] as String
    }
}
```

**Step C:** Update the `buildTypes` section to use the release signing config:

```kotlin
buildTypes {
    release {
        signingConfig = signingConfigs.getByName("release")  // Changed from "debug"
    }
}
```

**Complete example** of the modified `android/app/build.gradle.kts`:

```kotlin
plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
}

val keystorePropertiesFile = rootProject.file("key.properties")
val keystoreProperties = java.util.Properties().apply {
    if (keystorePropertiesFile.exists()) {
        load(keystorePropertiesFile.inputStream())
    }
}

android {
    namespace = "com.example.bit_switch"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    defaultConfig {
        applicationId = "com.example.bit_switch"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    signingConfigs {
        create("release") {
            storeFile = file(keystoreProperties["storeFile"] as String)
            storePassword = keystoreProperties["storePassword"] as String
            keyAlias = keystoreProperties["keyAlias"] as String
            keyPassword = keystoreProperties["keyPassword"] as String
        }
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("release")
        }
    }
}

flutter {
    source = "../.."
}
```

5. Build the AAB
   Run:

```bash
flutter pub get
flutter build appbundle --release
```

The generated AAB is typically at:

```
build/app/outputs/bundle/release/app-release.aab
```

6. Optional: test AAB locally with `bundletool`

- Download `bundletool.jar` from https://github.com/google/bundletool/releases
- Build an APK set and install on a device (requires keystore for signing):

```bash
# build apks from aab
java -jar bundletool.jar build-apks \
  --bundle=build/app/outputs/bundle/release/app-release.aab \
  --output=app.apks \
  --ks=/absolute/path/to/my-release-key.jks \
  --ks-key-alias=app-key-alias \
  --ks-pass=pass:YOUR_STORE_PASSWORD \
  --key-pass=pass:YOUR_KEY_PASSWORD

# install apks (device must be connected via adb)
java -jar bundletool.jar install-apks --apks=app.apks
```

7. Upload to Play Console

- Create the app in the Play Console (if not existing).
- Opt into Play App Signing (recommended). If you opt-into Play App Signing, you upload the AAB and Google handles final signing.
- From Release > Production (or testing track), create a new release, upload the `.aab`, add release notes, and roll out.

8. Checklist & tips

- Do NOT commit the keystore or `android/key.properties` to source control. Add `android/key.properties` and your keystore filename to `.gitignore`.
- Confirm `minSdkVersion` / `targetSdkVersion` and test on devices matching those SDKs. In this repo the merged debug manifest shows `minSdkVersion: 24` and `targetSdkVersion: 36` (verify release manifest before publishing).
- Ensure runtime permission flows (Wi‑Fi scan / location) are tested on Android devices.
- If you lose the upload keystore, follow Google Play Console upload key reset instructions — this is slow and should be avoided.

9. Common commands summary

```bash
# Update dependencies
flutter pub get

# Build the release app bundle
flutter build appbundle --release

# (Optional) Build an APK instead
flutter build apk --release
```

10. Where to edit next

- Update the `version:` in [pubspec.yaml](pubspec.yaml) before building.
- Add `key.properties` to `android/.gitignore` (or root `.gitignore`) to avoid committing secrets.

---

## Troubleshooting

### Error: "You uploaded an APK or Android App Bundle that was signed in debug mode"

This error means the release build is using the debug signing config instead of a release keystore.

**Cause:** The default Flutter `build.gradle.kts` contains:
```kotlin
signingConfig = signingConfigs.getByName("debug")
```

**Fix:**
1. Create a release keystore (Step 2 above)
2. Create `android/key.properties` with your keystore credentials (Step 3 above)
3. Update `android/app/build.gradle.kts` to use the release signing config (Step 4 above)
4. Rebuild with `flutter clean && flutter build appbundle --release`

### Error: "keystore file not found" or similar

- Verify the `storeFile` path in `key.properties` is an absolute path
- Ensure the keystore file exists at that location
- Check file permissions

### Verify Your AAB is Signed Correctly

Use this command to check the signing certificate:
```bash
keytool -printcert -jarfile build/app/outputs/bundle/release/app-release.aab
```

If it shows your release certificate info (not "Android Debug"), the signing is correct.

### App Works in Debug Mode but Not in Release (Network Issues)

**Symptoms:** The app works perfectly when running `flutter run` (debug mode) or on an emulator, but the release build fails to discover devices or make network requests. The app may be stuck on "Discovering devices" or show network errors.

**Cause:** Flutter's default project structure has three Android manifest files that get merged:

```
android/app/src/
├── main/AndroidManifest.xml      # Base manifest for ALL builds
├── debug/AndroidManifest.xml     # Merged ONLY for debug builds
└── profile/AndroidManifest.xml   # Merged ONLY for profile builds
```

The `debug/AndroidManifest.xml` includes the `INTERNET` permission for Flutter's development tools (hot reload, debugger), but this is **not** included in release builds. Additionally, Android blocks cleartext HTTP traffic by default in release builds.

**Fix:** Add the required permissions and cleartext traffic flag to `android/app/src/main/AndroidManifest.xml`:

```xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android">
    <!-- Network permissions for device discovery and control -->
    <uses-permission android:name="android.permission.INTERNET"/>
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>
    <uses-permission android:name="android.permission.ACCESS_WIFI_STATE"/>
    <uses-permission android:name="android.permission.CHANGE_WIFI_MULTICAST_STATE"/>

    <application
        android:usesCleartextTraffic="true"
        ...>
```

**Why these are needed:**
- `INTERNET` - Required for all network access (HTTP requests to devices)
- `ACCESS_NETWORK_STATE` - Check network connectivity status
- `ACCESS_WIFI_STATE` - Check WiFi connection status
- `CHANGE_WIFI_MULTICAST_STATE` - Required for SSDP multicast discovery
- `android:usesCleartextTraffic="true"` - Allows HTTP (non-HTTPS) traffic, essential since Wemo devices use HTTP on the local network

After making these changes, rebuild:
```bash
flutter clean
flutter build appbundle --release
```
