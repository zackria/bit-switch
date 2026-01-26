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

| Device Type | Features |
|-------------|----------|
| Smart Plug (Switch) | On/Off control |
| Light Switch | On/Off control |
| Dimmer | On/Off, Brightness control |
| Insight Plug | On/Off, Energy monitoring |
| Motion Sensor | Motion detection status |
| Outdoor Plug | On/Off control |
| Maker | On/Off, Sensor state |
| Bridge | Bridge status |

## Getting Started

### Prerequisites

- Flutter SDK (3.10.0 or higher)
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

3. Generate App Icons (Optional but recommended for new builds):
```bash
dart run flutter_launcher_icons
```

4. Run the app:
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

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is open source and available under the MIT License.

## Acknowledgments

- Inspired by [pywemo](https://github.com/pavoni/pywemo) Python library
- Built with [Flutter](https://flutter.dev)
