# Clean / Build / Compile — Quick Reference

Files referenced: [pubspec.yaml](pubspec.yaml), [android/app/build.gradle.kts](android/app/build.gradle.kts), [ios/Podfile](ios/Podfile), [macos/Podfile](macos/Podfile), [windows/runner/CMakeLists.txt](windows/runner/CMakeLists.txt), [linux/CMakeLists.txt](linux/CMakeLists.txt), [windows/runner/flutter_window.cpp](windows/runner/flutter_window.cpp)

## Common
- Clean Flutter build artifacts:
  ```sh
  flutter clean
  rm -rf build/ .dart_tool/
  ```
- Fetch packages:
  ```sh
  flutter pub get
  ```
- Generate App Icons:
  ```sh
  dart run flutter_launcher_icons
  ```

## Android
- Gradle clean:
  ```sh
  cd android
  ./gradlew clean
  cd ..
  ```
- Build APK (debug / release / split per ABI):
  ```sh
  flutter build apk --debug
  flutter build apk --release
  flutter build apk --target-platform android-arm64 --split-per-abi
  ```
- Build AAB:
  ```sh
  flutter build appbundle --release
  ```
- Run on device/emulator:
  ```sh
  flutter run -d <deviceId>
  ```

## iOS
- Install CocoaPods and clean:
  ```sh
  cd ios
  pod install
  pod repo update   # optional
  cd ..
  flutter clean
  ```
- Build for simulator / device:
  ```sh
  flutter build ios --simulator
  flutter build ios --no-codesign   # device (requires signing)
  ```
- Build IPA:
  ```sh
  flutter build ipa --export-method ad-hoc --no-codesign
  ```

## macOS
- Prepare:
  ```sh
  cd macos
  pod install
  cd ..
  ```
- Build:
  ```sh
  flutter build macos
  ```

## Windows
- Build with Flutter:
  ```sh
  flutter build windows
  ```
- Native CMake / Visual Studio workflow:
  - See [windows/runner/CMakeLists.txt](windows/runner/CMakeLists.txt).
  - Open `windows/runner` in Visual Studio or run CMake to configure and build the generated solution.

## Linux
- Build:
  ```sh
  flutter build linux
  ```
- Native packaging / CMake details: see [linux/CMakeLists.txt](linux/CMakeLists.txt).

## Web
- Build:
  ```sh
  flutter build web
  ```
- Serve locally:
  ```sh
  flutter run -d chrome
  ```

## Debug / Run
- Run on specific device:
  ```sh
  flutter devices
  flutter run -d <deviceId>
  ```
- Attach debugger from IDE (VS Code / Android Studio) or use `flutter attach` for existing apps.

## Advanced notes
- Android Gradle config: see [android/app/build.gradle.kts](android/app/build.gradle.kts).
- iOS Podfile: see [ios/Podfile](ios/Podfile) and [macos/Podfile](macos/Podfile).
- Windows Flutter host code: see [windows/runner/flutter_window.cpp](windows/runner/flutter_window.cpp) for window/controller init.