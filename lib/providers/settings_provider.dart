import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {
  static const _autoRefreshEnabledKey = 'auto_refresh_enabled';
  static const _autoRefreshIntervalKey = 'auto_refresh_interval_seconds';
  static const _discoveryTimeoutKey = 'discovery_timeout_seconds';
  static const _requestTimeoutKey = 'request_timeout_seconds';
  static const _showDebugOptionKey = 'show_debug_option';

  bool _autoRefreshEnabled = false;
  int _autoRefreshIntervalSeconds = 30;
  int _discoveryTimeoutSeconds = 15;
  int _requestTimeoutSeconds = 3;
  bool _showDebugOption = false;
  bool _isLoaded = false;
  late final Future<void> _loadFuture;

  SettingsProvider() {
    _loadFuture = _load();
  }

  bool get autoRefreshEnabled => _autoRefreshEnabled;
  int get autoRefreshIntervalSeconds => _autoRefreshIntervalSeconds;
  int get discoveryTimeoutSeconds => _discoveryTimeoutSeconds;
  int get requestTimeoutSeconds => _requestTimeoutSeconds;
  bool get showDebugOption => _showDebugOption;
  bool get isLoaded => _isLoaded;

  Future<void> ensureLoaded() => _loadFuture;

  Future<void> _load() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      _autoRefreshEnabled = prefs.getBool(_autoRefreshEnabledKey) ?? false;
      _autoRefreshIntervalSeconds = prefs.getInt(_autoRefreshIntervalKey) ?? 30;
      _discoveryTimeoutSeconds = prefs.getInt(_discoveryTimeoutKey) ?? 15;
      _requestTimeoutSeconds = prefs.getInt(_requestTimeoutKey) ?? 3;
      _showDebugOption = prefs.getBool(_showDebugOptionKey) ?? false;
    } catch (e) {
      if (kDebugMode) debugPrint('[SettingsProvider] Failed to load: $e');
      // Fall through with defaults
    }
    _isLoaded = true;
    notifyListeners();
  }

  Future<void> setAutoRefreshEnabled(bool value) async {
    if (_autoRefreshEnabled == value) return;
    _autoRefreshEnabled = value;
    notifyListeners();
    await _saveBool(_autoRefreshEnabledKey, value);
  }

  Future<void> setAutoRefreshIntervalSeconds(int seconds) async {
    if (_autoRefreshIntervalSeconds == seconds) return;
    _autoRefreshIntervalSeconds = seconds;
    notifyListeners();
    await _saveInt(_autoRefreshIntervalKey, seconds);
  }

  Future<void> setDiscoveryTimeoutSeconds(int seconds) async {
    if (_discoveryTimeoutSeconds == seconds) return;
    _discoveryTimeoutSeconds = seconds;
    notifyListeners();
    await _saveInt(_discoveryTimeoutKey, seconds);
  }

  Future<void> setRequestTimeoutSeconds(int seconds) async {
    if (_requestTimeoutSeconds == seconds) return;
    _requestTimeoutSeconds = seconds;
    notifyListeners();
    await _saveInt(_requestTimeoutKey, seconds);
  }

  Future<void> setShowDebugOption(bool value) async {
    if (_showDebugOption == value) return;
    _showDebugOption = value;
    notifyListeners();
    await _saveBool(_showDebugOptionKey, value);
  }

  Future<void> _saveBool(String key, bool value) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(key, value);
    } catch (e) {
      if (kDebugMode) debugPrint('[SettingsProvider] Failed to save $key: $e');
    }
  }

  Future<void> _saveInt(String key, int value) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt(key, value);
    } catch (e) {
      if (kDebugMode) debugPrint('[SettingsProvider] Failed to save $key: $e');
    }
  }
}
