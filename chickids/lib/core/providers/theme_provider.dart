import 'package:flutter/material.dart';

/// Theme Provider
///
/// Manages the application theme mode (light/dark) using ChangeNotifier
class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  bool get isDarkMode {
    if (_themeMode == ThemeMode.system) {
      return WidgetsBinding.instance.platformDispatcher.platformBrightness ==
          Brightness.dark;
    }
    return _themeMode == ThemeMode.dark;
  }

  bool get isLightMode => !isDarkMode;

  /// Set theme mode
  void setThemeMode(ThemeMode mode) {
    _themeMode = mode;
    notifyListeners();
  }

  /// Toggle between light and dark theme
  void toggleTheme() {
    if (_themeMode == ThemeMode.light) {
      _themeMode = ThemeMode.dark;
    } else if (_themeMode == ThemeMode.dark) {
      _themeMode = ThemeMode.light;
    } else {
      // If system mode, switch to opposite of current system theme
      final brightness =
          WidgetsBinding.instance.platformDispatcher.platformBrightness;
      _themeMode = brightness == Brightness.dark
          ? ThemeMode.light
          : ThemeMode.dark;
    }
    notifyListeners();
  }

  /// Set light theme
  void setLightTheme() {
    _themeMode = ThemeMode.light;
    notifyListeners();
  }

  /// Set dark theme
  void setDarkTheme() {
    _themeMode = ThemeMode.dark;
    notifyListeners();
  }

  /// Set system theme
  void setSystemTheme() {
    _themeMode = ThemeMode.system;
    notifyListeners();
  }
}
