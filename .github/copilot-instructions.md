# Copilot instructions for bit-switch

Purpose
- Provide concise, repo-specific guidance for Copilot sessions: build/test/lint commands, high-level architecture, and codebase-specific conventions.

Quick commands
- Install dependencies: flutter pub get
- Run app (device): flutter run -d <deviceId>
- Run on default device: flutter run
- Analyze/lint: flutter analyze
- Format: dart format .
- Build (Android): flutter build apk --release
- Build (Android appbundle): flutter build appbundle --release
- Build (iOS): cd ios && pod install && cd .. && flutter build ios --release
- Build (web): flutter build web
- Clean: flutter clean
- Generate icons: dart run flutter_launcher_icons

Tests
- Run all tests: flutter test
- Run a single test file: flutter test test/path/to_test.dart
- Run a single named test (pattern match): flutter test test/path/to_test.dart --name "My test name"
- Run tests with coverage: flutter test --coverage && genhtml coverage/lcov.info --output=coverage/html

High-level architecture (big picture)
- Clean / layered architecture:
  - lib/core: low-level network clients and utilities (SSDP discovery, SOAP client, constants, exceptions).
  - lib/models: immutable data classes (WemoDevice, DeviceState) with copyWith()/equality.
  - lib/services: business logic (device discovery, device control) that use core clients.
  - lib/providers: state management (ChangeNotifier + Provider) that expose app state to UI.
  - lib/ui: screens and reusable widgets. main.dart wires providers and routes.

Device communication flow (important across files)
- Discovery: SSDP M-SEARCH multicast to 239.255.255.250:1900; devices respond and the app fetches setup.xml from the device address (typically port 49153 / 49152-49159 range).
- Control: SOAP over HTTP POST to the device service endpoint (e.g., /upnp/control/basicevent1) using actions like GetBinaryState / SetBinaryState and service urn:Belkin:service:basicevent:1.
- Default timeouts: request timeout ~3s, discovery timeout ~5s, auto-refresh interval ~30s (configurable in core code).

Key conventions and repo-specific patterns
- State management: ChangeNotifier + Provider; providers live under lib/providers and are the primary integration point for services and UI.
- Models: immutable, implement copyWith(), equality, and descriptive toString(); prefer constructing modified copies rather than mutating.
- Network clients: SOAP/HTTP logic lives in lib/core/soap_client.dart and SSDP logic in lib/core/ssdp_client.dart — search these files when changing protocol behavior.
- Ports & endpoints: expect device ports in the 49151–49159 range (49153 is common); don't hardcode a single port without checking lib/core/constants.dart.
- Tests: many tests use a mock SSDP client to avoid real network io; prefer adding mocks when writing unit tests for services that normally perform network I/O.
- Lints: flutter_lints is enabled via pubspec; follow existing analysis_options.yaml rules where practical.
- Icons: flutter_launcher_icons configured in pubspec.yaml — update that section and run dart run flutter_launcher_icons when adding/updating icons.

Existing AI assistant configs
- CLAUDE.md present with extended developer notes and commands; reference it for additional operational details and platform-specific instructions.
- No additional assistant configs (.cursorrules, AGENTS.md, .windsurfrules, etc.) were found in the repo root.

Where to look first for common changes
- Protocol changes: lib/core/soap_client.dart, lib/core/ssdp_client.dart, lib/core/constants.dart
- Discovery/control logic: lib/services/device_discovery_service.dart, lib/services/device_control_service.dart
- App state: lib/providers/device_provider.dart
- Tests: test/ (mirrors lib/ structure) — use mock SSDP client files under test/ when available

When generating changes
- Make minimal edits to the smallest set of files necessary; maintain separation between core/network code and UI/provider code.
- Avoid making network-dependent tests flaky: use the existing mock SSDP client pattern.

MCP Servers
- (After creation) Would you like to configure any MCP servers for this project (e.g., Playwright or other test runners)?

