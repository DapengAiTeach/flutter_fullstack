import 'package:flutter/material.dart';
import 'app_colors_extension.dart';

/// 应用主题配置 - 深灰黑极简现代风格
class AppTheme {
  // ============ 颜色常量 ============
  // 亮色主题
  static const Color _lightPrimary = Color(0xFF000000); // 纯黑
  static const Color _lightBg = Color(0xFFFFFFFF); // 纯白
  static const Color _lightCardBg = Color(0xFFFAFAFA); // 极浅灰
  static const Color _lightText = Color(0xFF18181B); // 近黑
  static const Color _lightTextSecondary = Color(0xFF52525B); // 中灰
  static const Color _lightBorder = Color(0xFFE4E4E7); // 浅灰
  static const Color _lightAccent = Color(0xFF6366F1); // 青紫强调色

  // 暗色主题
  static const Color _darkPrimary = Color(0xFFFAFAFA); // 极浅灰
  static const Color _darkBg = Color(0xFF09090B); // 极黑
  static const Color _darkCardBg = Color(0xFF18181B); // 深灰
  static const Color _darkText = Color(0xFFF4F4F5); // 浅白
  static const Color _darkTextSecondary = Color(0xFFA1A1A6); // 灰
  static const Color _darkBorder = Color(0xFF27272A); // 中深灰
  static const Color _darkAccent = Color(0xFF6366F1); // 青紫强调色

  // 功能颜色
  static const Color _lightSuccess = Color(0xFF10B981); // 成功绿
  static const Color _lightWarning = Color(0xFFF59E0B); // 警告橙
  static const Color _lightError = Color(0xFFEF4444); // 错误红
  static const Color _lightInfo = Color(0xFF0EA5E9); // 信息蓝

  static const Color _darkSuccess = Color(0xFF6EE7B7); // 成功绿
  static const Color _darkWarning = Color(0xFFFBBF24); // 警告橙
  static const Color _darkError = Color(0xFFFCA5A5); // 错误红
  static const Color _darkInfo = Color(0xFF38BDF8); // 信息蓝

  /// 获取亮色主题数据
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _lightAccent,
        brightness: Brightness.light,
      ),

      // 自定义颜色扩展
      extensions: <ThemeExtension<dynamic>>[
        AppColorsExtension(
          pageRecommendColor: _lightAccent,
          pageCategoryColor: _lightAccent,
          pageDownloadColor: _lightAccent,
          pageProfileColor: _lightAccent,
          successColor: _lightSuccess,
          warningColor: _lightWarning,
          errorColor: _lightError,
          infoColor: _lightInfo,
        ),
      ],

      // 应用栏主题
      appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: _lightBg,
        foregroundColor: _lightText,
        titleTextStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: _lightText,
        ),
      ),

      // 脚手架背景色
      scaffoldBackgroundColor: _lightBg,

      // 文字主题
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: _lightText,
        ),
        headlineMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: _lightText,
        ),
        headlineSmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: _lightText,
        ),
        titleLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: _lightText,
        ),
        titleMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: _lightText,
        ),
        bodyLarge: TextStyle(fontSize: 16, color: _lightText, height: 1.5),
        bodyMedium: TextStyle(fontSize: 14, color: _lightText, height: 1.5),
        bodySmall: TextStyle(
          fontSize: 12,
          color: _lightTextSecondary,
          height: 1.4,
        ),
        labelLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: _lightText,
        ),
      ),

      // 按钮主题
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: _lightAccent,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: _lightAccent,
          side: const BorderSide(color: _lightAccent),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),

      // 卡片主题 - 使用 ColorScheme 的 surface 颜色
      cardTheme: CardThemeData(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      ),

      // 输入框主题
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: _lightCardBg,
        hintStyle: const TextStyle(color: _lightTextSecondary),
        labelStyle: const TextStyle(color: _lightText),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: _lightBorder),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: _lightBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: _lightAccent, width: 2),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
      ),

      // 分割线主题
      dividerTheme: const DividerThemeData(
        color: _lightBorder,
        thickness: 1,
        space: 0,
      ),

      // 芯片主题
      chipTheme: ChipThemeData(
        backgroundColor: _lightCardBg,
        selectedColor: _lightAccent,
        labelStyle: const TextStyle(color: _lightText),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  /// 获取暗色主题数据
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _darkAccent,
        brightness: Brightness.dark,
      ),

      // 自定义颜色扩展
      extensions: <ThemeExtension<dynamic>>[
        AppColorsExtension(
          pageRecommendColor: _darkAccent,
          pageCategoryColor: _darkAccent,
          pageDownloadColor: _darkAccent,
          pageProfileColor: _darkAccent,
          successColor: _darkSuccess,
          warningColor: _darkWarning,
          errorColor: _darkError,
          infoColor: _darkInfo,
        ),
      ],

      // 应用栏主题
      appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: _darkBg,
        foregroundColor: _darkText,
        titleTextStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: _darkText,
        ),
      ),

      // 脚手架背景色
      scaffoldBackgroundColor: _darkBg,

      // 文字主题
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: _darkText,
        ),
        headlineMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: _darkText,
        ),
        headlineSmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: _darkText,
        ),
        titleLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: _darkText,
        ),
        titleMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: _darkText,
        ),
        bodyLarge: TextStyle(fontSize: 16, color: _darkText, height: 1.5),
        bodyMedium: TextStyle(fontSize: 14, color: _darkText, height: 1.5),
        bodySmall: TextStyle(
          fontSize: 12,
          color: _darkTextSecondary,
          height: 1.4,
        ),
        labelLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: _darkText,
        ),
      ),

      // 按钮主题
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: _darkAccent,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: _darkAccent,
          side: const BorderSide(color: _darkAccent),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),

      // 卡片主题 - 使用 ColorScheme 的 surface 颜色
      cardTheme: CardThemeData(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      ),

      // 输入框主题
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: _darkCardBg,
        hintStyle: const TextStyle(color: _darkTextSecondary),
        labelStyle: const TextStyle(color: _darkText),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: _darkBorder),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: _darkBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: _darkAccent, width: 2),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
      ),

      // 分割线主题
      dividerTheme: const DividerThemeData(
        color: _darkBorder,
        thickness: 1,
        space: 0,
      ),

      // 芯片主题
      chipTheme: ChipThemeData(
        backgroundColor: _darkCardBg,
        selectedColor: _darkAccent,
        labelStyle: const TextStyle(color: _darkText),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
