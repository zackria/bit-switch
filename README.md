# Bit Switch

A Flutter application for controlling Legacy Wemo smart home devices on iOS and Android. This app provides local network control without requiring cloud connectivity.

## Features

- **Device Discovery**: Automatically discovers Wemo devices on your local network using SSDP/UPnP
- **Device Control**: Turn devices on/off, adjust brightness for dimmers
- **Energy Monitoring**: View power consumption for Insight plugs
- **Cross-Platform**: Works on both iOS and Android
- **Dark Mode**: Supports system light/dark theme preferences
- **No Cloud Required**: All communication happens locally on your network

## Supported Devices

| Device Type         | Features                   |
| ------------------- | -------------------------- |
| Smart Plug (Switch) | On/Off control             |
| Light Switch        | On/Off control             |
| Dimmer              | On/Off, Brightness control |
| Insight Plug        | On/Off, Energy monitoring  |
| Motion Sensor       | Motion detection status    |
| Outdoor Plug        | On/Off control             |
| Maker               | On/Off, Sensor state       |
| Bridge              | Bridge status              |

## Thoroughly tested with strong code coverage

![Code Coverage](./App%20Store/Code%20Coverage%20Screenshot/code_coverage.png)

## Buy me a coffee

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://buymeacoffee.com/zackdawood)

## Getting Started

### Prerequisites

- Flutter SDK (3.10.0 or higher) [https://flutter.dev/](https://flutter.dev/)
- iOS 12.0+ / Android 5.0 (API 21)+
- Wemo devices on the same local network

### Installation

1. Clone the repository:

```bash
git clone https://github.com/yourusername/bit-switch.git
cd bit-switch
```

2. Install dependencies:

```bash
flutter pub get
```

3. Create multiple specific platforms

```bash
flutter create --platforms=android,ios .
```

Note: if you need for specific org the follow the instruction below

```
flutter create --platforms=android,ios  --org com.binaryboots .
```

4. Generate App Icons (Optional but recommended for new builds):

```bash
dart run flutter_launcher_icons
```

**android Icons:**

```bash
# Copy android Default icons
ICONS="App Store/android_images"
DEST="android/app/src/main"

cp -R "$ICONS/res" "$DEST/res"

```

**iOS Icons:**

> **Important:** iOS App Store rejects icons that contain an alpha channel (transparency).
> After copying, run the `sips` command below to strip the alpha channel from all icons.

```bash
# Copy iOS Default icons
ICONS="App Store/bitSwitchIcon_v1 Exports"
DEST="ios/Runner/Assets.xcassets/AppIcon.appiconset"

cp "$ICONS/bitSwitchIcon_v1-iOS-Default-1024x1024@1x.png" "$DEST/Icon-App-1024x1024@1x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Default-20x20@2x.png" "$DEST/Icon-App-20x20@2x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Default-20x20@3x.png" "$DEST/Icon-App-20x20@3x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Default-29x29@2x.png" "$DEST/Icon-App-29x29@2x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Default-29x29@3x.png" "$DEST/Icon-App-29x29@3x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Default-38x38@2x.png" "$DEST/Icon-App-38x38@2x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Default-38x38@3x.png" "$DEST/Icon-App-38x38@3x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Default-40x40@2x.png" "$DEST/Icon-App-40x40@2x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Default-40x40@3x.png" "$DEST/Icon-App-40x40@3x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Default-60x60@2x.png" "$DEST/Icon-App-60x60@2x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Default-60x60@3x.png" "$DEST/Icon-App-60x60@3x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Default-64x64@2x.png" "$DEST/Icon-App-64x64@2x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Default-64x64@3x.png" "$DEST/Icon-App-64x64@3x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Default-68x68@2x.png" "$DEST/Icon-App-68x68@2x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Default-76x76@2x.png" "$DEST/Icon-App-76x76@2x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Default-83.5x83.5@2x.png" "$DEST/Icon-App-83.5x83.5@2x.png"

# Remove alpha channel from all icons (required by App Store)
for icon in "$DEST"/*.png; do
  sips -s format jpeg -s formatOptions 100 "$icon" --out "$icon.jpg"
  sips -s format png "$icon.jpg" --out "$icon"
  rm "$icon.jpg"
done
```

5. Run the app:

```bash
# For iOS
flutter run -d ios

# For Android
flutter run -d android
```

### Building for Release

```bash
# iOS
flutter build ios --release

# Android
flutter build apk --release
```

### Testing with coverage

```bash
flutter test --coverage

genhtml coverage/lcov.info --output=coverage/html

open coverage/html/index.html
```

### Note: In MacOS you need lcov for using genhml

```bash
brew install lcov
```

## Architecture

The app follows a clean architecture pattern with clear separation of concerns:

```
lib/
├── core/                    # Core utilities
│   ├── constants.dart       # App constants
│   ├── exceptions.dart      # Custom exceptions
│   ├── soap_client.dart     # SOAP/HTTP client
│   └── ssdp_client.dart     # SSDP discovery client
├── models/                  # Data models
│   ├── wemo_device.dart     # Device model
│   └── device_state.dart    # State model
├── services/                # Business logic
│   ├── device_discovery_service.dart
│   └── device_control_service.dart
├── providers/               # State management
│   └── device_provider.dart
├── ui/
│   ├── screens/            # App screens
│   │   ├── home_screen.dart
│   │   ├── device_detail_screen.dart
│   │   └── settings_screen.dart
│   └── widgets/            # Reusable widgets
│       ├── device_card.dart
│       ├── power_button.dart
│       ├── brightness_slider.dart
│       └── insight_stats.dart
└── main.dart               # App entry point
```

## Protocol Details

### Device Discovery

The app uses SSDP (Simple Service Discovery Protocol) to find Wemo devices:

1. Sends M-SEARCH multicast to `239.255.255.250:1900`
2. Listens for responses from Belkin devices
3. Fetches device info from `http://<device-ip>:49153/setup.xml`

### Device Control

Control commands are sent via SOAP over HTTP:

- **Endpoint**: `http://<device-ip>:49153/upnp/control/basicevent1`
- **Actions**: `GetBinaryState`, `SetBinaryState`
- **Service Type**: `urn:Belkin:service:basicevent:1`

## Network Requirements

- The mobile device must be on the same local network as the Wemo devices
- UDP multicast must be allowed on the network
- HTTP traffic to device ports (49152-49159) must not be blocked

## Troubleshooting

### Devices Not Found

1. Ensure your phone is on the same WiFi network as your Wemo devices
2. Check that your router allows UDP multicast
3. Try manually scanning using the refresh button
4. Verify devices are powered on and connected to WiFi

### Connection Errors

1. Some routers block local network access - check your router settings
2. On iOS, ensure "Local Network" permission is granted in Settings
3. Try power cycling the Wemo device

## Want to add a feature? Follow the steps below to clone, install, and update

- Contribute! I'll be happy to accept pull requests!
- Bug hunting! [Report](https://github.com/zackria/bit-switch/issues) them!
- Feature request? Please let me know by filling an [issue](https://github.com/zackria/bit-switch/issues)!
- Star this project on [GitHub](https://github.com/zackria/bit-switch).

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is open source and available under the MIT License.

## Acknowledgments

- Inspired by [pywemo](https://github.com/pavoni/pywemo) Python library
- Built with [Flutter](https://flutter.dev)
