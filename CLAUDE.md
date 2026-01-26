# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Bit Switch is a Flutter mobile application for controlling legacy Wemo smart home devices via local network communication (no cloud required). Supports iOS, Android, macOS, Windows, Linux, and Web.

## Common Commands

```bash
# Install dependencies
flutter pub get

# Run the app
flutter run

# Run on specific device
flutter run -d <deviceId>

# Analyze code
flutter analyze

# Run all tests
flutter test

# Run tests with coverage
flutter test --coverage

# Run specific test directory
flutter test test/services/

# Generate app icons
dart run flutter_launcher_icons

# Clean build artifacts
flutter clean
```

## Platform Management

### Make Minimal (Dart-only)

Remove all platform folders to keep only Dart code:

```bash
# Remove all platform folders
rm -rf android ios web macos windows linux
```

### Create Platform Folders

```bash
# Create all platforms
flutter create .

# Create specific platforms only
flutter create --platforms=android .
flutter create --platforms=ios .
flutter create --platforms=web .
flutter create --platforms=macos .
flutter create --platforms=windows .
flutter create --platforms=linux .

# Create multiple specific platforms
flutter create --platforms=android,ios .
flutter create --platforms=android,ios,web .
flutter create --platforms=android,ios,web,macos,windows,linux .
```

### Remove Specific Platform

```bash
# Remove Android
rm -rf android

# Remove iOS
rm -rf ios

# Remove Web
rm -rf web

# Remove macOS
rm -rf macos

# Remove Windows
rm -rf windows

# Remove Linux
rm -rf linux
```

### Copy Icons from Exports

Icons are exported to `App Store/bitSwitchIcon_v1 Exports/`. After creating platform folders, copy icons:

**iOS Icons:**
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

# Copy iOS Dark icons
cp "$ICONS/bitSwitchIcon_v1-iOS-Dark-1024x1024@1x.png" "$DEST/Icon-App-Dark-1024x1024@1x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Dark-20x20@2x.png" "$DEST/Icon-App-Dark-20x20@2x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Dark-20x20@3x.png" "$DEST/Icon-App-Dark-20x20@3x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Dark-29x29@2x.png" "$DEST/Icon-App-Dark-29x29@2x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Dark-29x29@3x.png" "$DEST/Icon-App-Dark-29x29@3x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Dark-38x38@2x.png" "$DEST/Icon-App-Dark-38x38@2x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Dark-38x38@3x.png" "$DEST/Icon-App-Dark-38x38@3x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Dark-40x40@2x.png" "$DEST/Icon-App-Dark-40x40@2x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Dark-40x40@3x.png" "$DEST/Icon-App-Dark-40x40@3x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Dark-60x60@2x.png" "$DEST/Icon-App-Dark-60x60@2x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Dark-60x60@3x.png" "$DEST/Icon-App-Dark-60x60@3x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Dark-64x64@2x.png" "$DEST/Icon-App-Dark-64x64@2x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Dark-64x64@3x.png" "$DEST/Icon-App-Dark-64x64@3x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Dark-68x68@2x.png" "$DEST/Icon-App-Dark-68x68@2x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Dark-76x76@2x.png" "$DEST/Icon-App-Dark-76x76@2x.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Dark-83.5x83.5@2x.png" "$DEST/Icon-App-Dark-83.5x83.5@2x.png"
```

**macOS Icons:**
```bash
ICONS="App Store/bitSwitchIcon_v1 Exports"
DEST="macos/Runner/Assets.xcassets/AppIcon.appiconset"

cp "$ICONS/bitSwitchIcon_v1-iOS-Default-16x16@1x.png" "$DEST/app_icon_16.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Default-32x32@1x.png" "$DEST/app_icon_32.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Default-64x64@2x.png" "$DEST/app_icon_64.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Default-128x128@1x.png" "$DEST/app_icon_128.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Default-256x256@1x.png" "$DEST/app_icon_256.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Default-512x512@1x.png" "$DEST/app_icon_512.png"
cp "$ICONS/bitSwitchIcon_v1-iOS-Default-1024x1024@1x.png" "$DEST/app_icon_1024.png"
```

**Web Icons:**
```bash
ICONS="App Store/bitSwitchIcon_v1 Exports"

# Use 192x192 and 512x512 icons (resize from available sizes or use flutter_launcher_icons)
cp "App Store/bitSwitchIcon_v1.png" "web/icons/Icon-512.png"
cp "App Store/bitSwitchIcon_v1.png" "web/icons/Icon-maskable-512.png"
# For 192x192, use sips to resize:
sips -z 192 192 "App Store/bitSwitchIcon_v1.png" --out "web/icons/Icon-192.png"
sips -z 192 192 "App Store/bitSwitchIcon_v1.png" --out "web/icons/Icon-maskable-192.png"
cp "web/icons/Icon-192.png" "web/favicon.png"
```

**Android Icons (use flutter_launcher_icons):**
```bash
# Configure in pubspec.yaml then run:
dart run flutter_launcher_icons
```

### Platform-Specific Builds

```bash
# Android
flutter build apk --release
flutter build appbundle --release

# iOS
cd ios && pod install && cd ..
flutter build ios
flutter build ipa

# macOS
cd macos && pod install && cd ..
flutter build macos

# Windows
flutter build windows

# Linux
flutter build linux

# Web
flutter build web
```

## Architecture

The app follows Clean Architecture with Provider for state management:

```
lib/
├── core/           # Network clients (SSDP, SOAP) and utilities
├── models/         # Immutable data classes (WemoDevice, DeviceState)
├── services/       # Business logic (discovery, device control)
├── providers/      # State management (DeviceProvider, SettingsProvider)
└── ui/             # Screens and widgets
```

### Key Architectural Patterns

**State Management:** Uses `ChangeNotifier` with Provider package. `DeviceProvider` manages discovered devices; `SettingsProvider` handles user preferences.

**Device Communication Protocol:**
- **Discovery:** SSDP M-SEARCH multicast to `239.255.255.250:1900`, then HTTP GET to device's `setup.xml`
- **Control:** SOAP over HTTP POST to device ports (49152-49159)

**Exception Hierarchy:** Custom exceptions extend `WemoException`:
- `NetworkException` - Connection issues
- `DiscoveryException` - Device discovery failures
- `SoapException` - Protocol errors
- `DeviceException` - Control errors
- `TimeoutException` - Operation timeouts

**Models:** All models are immutable with `copyWith()`, proper equality, and `toString()` implementations.

### Key Files

- `lib/core/constants.dart` - SSDP multicast address, device ports, service URNs
- `lib/core/soap_client.dart` - SOAP envelope construction and HTTP communication
- `lib/core/ssdp_client.dart` - SSDP discovery protocol implementation
- `lib/services/device_discovery_service.dart` - Coordinates device discovery
- `lib/services/device_control_service.dart` - Device on/off, brightness, energy data
- `lib/providers/device_provider.dart` - Main app state management

## Device Protocol Details

Wemo devices use:
- **Ports:** 49153 (primary), 49152, 49154, 49151, 49155-49159
- **Request timeout:** 3 seconds
- **Discovery timeout:** 5 seconds
- **Auto-refresh interval:** 30 seconds (configurable)

## Platform Permissions

**iOS:** Requires location permission + Access WiFi Information entitlement for SSID access

**Android <13:** Location permission required

**Android 13+:** NEARBY_WIFI_DEVICES or Location permission

## Testing

Tests are organized to mirror the source structure. Uses mock SSDP client to avoid network/timer issues in tests.

```
test/
├── core/       # Core utilities tests
├── models/     # Model tests
├── services/   # Service tests
├── providers/  # State provider tests
└── ui/         # Screen and widget tests
```
