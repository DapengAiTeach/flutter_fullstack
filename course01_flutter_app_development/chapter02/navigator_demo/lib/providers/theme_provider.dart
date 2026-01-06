import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// 主题管理器 - 管理应用主题状态和持久化
class ThemeProvider extends ChangeNotifier {
  static const String _themePreferenceKey = 'theme_mode';

  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  /// 判断当前是否为暗色主题
  bool get isDarkMode {
    if (_themeMode == ThemeMode.system) {
      // 返回系统主题，这里默认为 false（亮色）
      // 实际值由 Flutter 框架根据系统设置决定
      return false;
    }
    return _themeMode == ThemeMode.dark;
  }

  /// 初始化主题 - 从本地存储读取用户的主题设置
  Future<void> initTheme() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final savedTheme = prefs.getString(_themePreferenceKey) ?? 'system';

      _themeMode = _stringToThemeMode(savedTheme);
      notifyListeners();
    } catch (e) {
      print('初始化主题失败: $e');
      _themeMode = ThemeMode.system;
    }
  }

  /// 切换主题 - 循环切换：系统 -> 亮色 -> 暗色 -> 系统
  Future<void> toggleTheme() async {
    switch (_themeMode) {
      case ThemeMode.system:
        _themeMode = ThemeMode.light;
        break;
      case ThemeMode.light:
        _themeMode = ThemeMode.dark;
        break;
      case ThemeMode.dark:
        _themeMode = ThemeMode.system;
        break;
    }

    // 保存到本地存储
    await _saveThemePreference(_themeModeToString(_themeMode));
    notifyListeners();
  }

  /// 设置指定主题
  Future<void> setThemeMode(ThemeMode mode) async {
    _themeMode = mode;
    await _saveThemePreference(_themeModeToString(mode));
    notifyListeners();
  }

  /// 保存主题设置到本地存储
  Future<void> _saveThemePreference(String themeValue) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_themePreferenceKey, themeValue);
    } catch (e) {
      print('保存主题设置失败: $e');
    }
  }

  /// 字符串转 ThemeMode
  ThemeMode _stringToThemeMode(String value) {
    switch (value.toLowerCase()) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }

  /// ThemeMode 转字符串
  String _themeModeToString(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.light:
        return 'light';
      case ThemeMode.dark:
        return 'dark';
      case ThemeMode.system:
        return 'system';
    }
  }
}
