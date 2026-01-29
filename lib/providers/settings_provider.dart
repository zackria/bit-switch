import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {
  static const _autoRefreshEnabledKey = 'auto_refresh_enabled';
  static const _autoRefreshIntervalKey = 'auto_refresh_interval_seconds';
  static const _discoveryTimeoutKey = 'discovery_timeout_seconds';
  static const _requestTimeoutKey = 'request_timeout_seconds';

  bool _autoRefreshEnabled = false;
  int _autoRefreshIntervalSeconds = 30;
  int _discoveryTimeoutSeconds = 15;
  int _requestTimeoutSeconds = 3;
  bool _isLoaded = false;
  late final Future<void> _loadFuture;

  SettingsProvider() {
    _loadFuture = _load();
  }

  bool get autoRefreshEnabled => _autoRefreshEnabled;
  int get autoRefreshIntervalSeconds => _autoRefreshIntervalSeconds;
  int get discoveryTimeoutSeconds => _discoveryTimeoutSeconds;
  int get requestTimeoutSeconds => _requestTimeoutSeconds;
  bool get isLoaded => _isLoaded;

  Future<void> ensureLoaded() => _loadFuture;

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    _autoRefreshEnabled = prefs.getBool(_autoRefreshEnabledKey) ?? false;
    _autoRefreshIntervalSeconds = prefs.getInt(_autoRefreshIntervalKey) ?? 30;
    _discoveryTimeoutSeconds = prefs.getInt(_discoveryTimeoutKey) ?? 15;
    _requestTimeoutSeconds = prefs.getInt(_requestTimeoutKey) ?? 3;
    _isLoaded = true;
    notifyListeners();
  }

  Future<void> setAutoRefreshEnabled(bool value) async {
    if (_autoRefreshEnabled == value) return;
    _autoRefreshEnabled = value;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_autoRefreshEnabledKey, value);
  }

  Future<void> setAutoRefreshIntervalSeconds(int seconds) async {
    if (_autoRefreshIntervalSeconds == seconds) return;
    _autoRefreshIntervalSeconds = seconds;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_autoRefreshIntervalKey, seconds);
  }

  Future<void> setDiscoveryTimeoutSeconds(int seconds) async {
    if (_discoveryTimeoutSeconds == seconds) return;
    _discoveryTimeoutSeconds = seconds;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_discoveryTimeoutKey, seconds);
  }

  Future<void> setRequestTimeoutSeconds(int seconds) async {
    if (_requestTimeoutSeconds == seconds) return;
    _requestTimeoutSeconds = seconds;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_requestTimeoutKey, seconds);
  }
}