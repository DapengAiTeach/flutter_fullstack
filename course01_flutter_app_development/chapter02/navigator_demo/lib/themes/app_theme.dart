import 'package:flutter/material.dart';
import '../config/color_config.dart';
import 'app_colors_extension.dart';

/// 应用主题配置 - 艺术创意风格
class AppTheme {
  /// 获取亮色主题数据
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: ColorConfig.lightPrimary,
        brightness: Brightness.light,
      ),

      // 自定义颜色扩展
      extensions: <ThemeExtension<dynamic>>[
        AppColorsExtension(
          pageRecommendColor: ColorConfig.lightPageHome,
          pageCategoryColor: ColorConfig.lightPageCategory,
          pageDownloadColor: ColorConfig.lightPageDownload,
          pageProfileColor: ColorConfig.lightPageProfile,
          successColor: ColorConfig.lightSuccess,
          warningColor: ColorConfig.lightWarning,
          errorColor: ColorConfig.lightError,
          infoColor: ColorConfig.lightInfo,
        ),
      ],

      // 应用栏主题 - 紫蓝渐变
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: ColorConfig.lightBg,
        foregroundColor: ColorConfig.lightText,
        titleTextStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: ColorConfig.lightText,
        ),
      ),

      // 脚手架背景色
      scaffoldBackgroundColor: ColorConfig.lightBg,

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

      // 卡片主题 - 使用 ColorScheme 的 surface 颜色
      cardTheme: CardThemeData(
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

  /// 获取暗色主题数据
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: ColorConfig.darkPrimary,
        brightness: Brightness.dark,
      ),

      // 自定义颜色扩展
      extensions: <ThemeExtension<dynamic>>[
        AppColorsExtension(
          pageRecommendColor: ColorConfig.darkPageHome,
          pageCategoryColor: ColorConfig.darkPageCategory,
          pageDownloadColor: ColorConfig.darkPageDownload,
          pageProfileColor: ColorConfig.darkPageProfile,
          successColor: ColorConfig.darkSuccess,
          warningColor: ColorConfig.darkWarning,
          errorColor: ColorConfig.darkError,
          infoColor: ColorConfig.darkInfo,
        ),
      ],

      // 应用栏主题
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: ColorConfig.darkBg,
        foregroundColor: ColorConfig.darkText,
        titleTextStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: ColorConfig.darkText,
        ),
      ),

      // 脚手架背景色
      scaffoldBackgroundColor: ColorConfig.darkBg,

      // 文字主题
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: ColorConfig.darkText,
        ),
        headlineMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: ColorConfig.darkText,
        ),
        headlineSmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: ColorConfig.darkText,
        ),
        titleLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: ColorConfig.darkText,
        ),
        titleMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: ColorConfig.darkText,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          color: ColorConfig.darkText,
          height: 1.5,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          color: ColorConfig.darkText,
          height: 1.5,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          color: ColorConfig.darkTextSecondary,
          height: 1.4,
        ),
        labelLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: ColorConfig.darkText,
        ),
      ),

      // 按钮主题
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: ColorConfig.darkPrimary,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: ColorConfig.darkPrimary,
          side: const BorderSide(color: ColorConfig.darkPrimary),
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
        fillColor: ColorConfig.darkCardBg,
        hintStyle: const TextStyle(color: ColorConfig.darkHint),
        labelStyle: const TextStyle(color: ColorConfig.darkText),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: ColorConfig.darkBorder),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: ColorConfig.darkBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: ColorConfig.darkPrimary,
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
        color: ColorConfig.darkBorder,
        thickness: 1,
        space: 0,
      ),

      // 芯片主题
      chipTheme: ChipThemeData(
        backgroundColor: ColorConfig.darkCardBg,
        selectedColor: ColorConfig.darkPrimary,
        labelStyle: const TextStyle(color: ColorConfig.darkText),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
