import 'package:flutter/material.dart';
import '../config/color_config.dart';

/// 应用主题配置 - 艺术创意风格
class AppTheme {
  /// 获取应用的主题数据
  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: ColorConfig.primaryGradientStart,
        brightness: Brightness.light,
      ),

      // 应用栏主题 - 紫蓝渐变
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: ColorConfig.backgroundColor,
        foregroundColor: ColorConfig.textColor,
        titleTextStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: ColorConfig.textColor,
        ),
      ),

      // 脚手架背景色
      scaffoldBackgroundColor: ColorConfig.backgroundColor,

      // 文字主题
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: ColorConfig.textColor,
        ),
        headlineMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: ColorConfig.textColor,
        ),
        headlineSmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: ColorConfig.textColor,
        ),
        titleLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: ColorConfig.textColor,
        ),
        titleMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: ColorConfig.textColor,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          color: ColorConfig.textColor,
          height: 1.5,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          color: ColorConfig.textColor,
          height: 1.5,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          color: ColorConfig.secondaryText,
          height: 1.4,
        ),
        labelLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: ColorConfig.textColor,
        ),
      ),

      // 按钮主题
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: ColorConfig.primaryButton,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: ColorConfig.primaryButton,
          side: const BorderSide(color: ColorConfig.primaryButton),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),

      // 卡片主题
      cardTheme: CardThemeData(
        color: ColorConfig.cardBackground,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      ),

      // 输入框主题
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: ColorConfig.cardBackground,
        hintStyle: const TextStyle(color: ColorConfig.hintText),
        labelStyle: const TextStyle(color: ColorConfig.textColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: ColorConfig.dividerColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: ColorConfig.dividerColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: ColorConfig.primaryButton,
            width: 2,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
      ),

      // 分割线主题
      dividerTheme: const DividerThemeData(
        color: ColorConfig.dividerColor,
        thickness: 1,
        space: 0,
      ),

      // 芯片主题
      chipTheme: ChipThemeData(
        backgroundColor: ColorConfig.cardBackground,
        selectedColor: ColorConfig.primaryButton,
        labelStyle: const TextStyle(color: ColorConfig.textColor),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
