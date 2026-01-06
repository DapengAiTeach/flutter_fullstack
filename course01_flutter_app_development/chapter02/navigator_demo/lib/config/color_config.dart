import 'package:flutter/material.dart';

/// 艺术创意风格 - 色彩配置
/// 这个配置文件定义了整个壁纸APP的色彩系统
class ColorConfig {
  // ========== 亮色主题颜色 ==========
  // 主题渐变色 - 亮色
  static const Color lightPrimaryGradientStart = Color(0xFF7C3AED); // 紫色
  static const Color lightPrimaryGradientEnd = Color(0xFF0EA5E9); // 蓝色

  // 全局背景色 - 亮色
  static const Color lightBackgroundColor = Color(0xFFFFFFFF); // 白色
  static const Color lightCardBackground = Color(0xFFF5F5F5); // 浅灰卡片背景

  // 文字颜色 - 亮色
  static const Color lightTextColor = Color(0xFF2D3748); // 深灰
  static const Color lightSecondaryText = Color(0xFF718096); // 次文字浅灰
  static const Color lightHintText = Color(0xFFA0AEC0); // 提示文字
  static const Color lightDividerColor = Color(0xFFE2E8F0); // 浅灰分割线

  // 按钮色 - 亮色
  static const Color lightPrimaryButton = Color(0xFF7C3AED); // 主按钮紫色

  // ========== 暗色主题颜色 ==========
  // 主题渐变色 - 暗色
  static const Color darkPrimaryGradientStart = Color(0xFF9D4EDD); // 深紫色
  static const Color darkPrimaryGradientEnd = Color(0xFF3A86FF); // 深蓝色

  // 全局背景色 - 暗色
  static const Color darkBackgroundColor = Color(0xFF1A202C); // 深灰/黑
  static const Color darkCardBackground = Color(0xFF2D3748); // 中灰卡片背景

  // 文字颜色 - 暗色
  static const Color darkTextColor = Color(0xFFF7FAFC); // 浅白
  static const Color darkSecondaryText = Color(0xFFA0AEC0); // 次文字灰
  static const Color darkHintText = Color(0xFF718096); // 提示文字灰
  static const Color darkDividerColor = Color(0xFF4A5568); // 深灰分割线

  // 按钮色 - 暗色
  static const Color darkPrimaryButton = Color(0xA78BFA); // 主按钮浅紫

  // ========== 通用颜色 (不随主题变化) ==========
  // 主题渐变色 - 默认为亮色
  static const Color primaryGradientStart = lightPrimaryGradientStart;
  static const Color primaryGradientEnd = lightPrimaryGradientEnd;

  // 全局背景色 - 默认为亮色
  static const Color backgroundColor = lightBackgroundColor;
  static const Color cardBackground = lightCardBackground;

  // 文字颜色 - 默认为亮色
  static const Color textColor = lightTextColor;
  static const Color secondaryText = lightSecondaryText;
  static const Color hintText = lightHintText;

  // 导航栏项的独立颜色
  static const Color recommendColor = Color(0xFFFF6B6B); // 推荐 - 热情红
  static const Color categoryColor = Color(0xFF4ECDC4); // 分类 - 青绿色
  static const Color downloadColor = Color(0xFFFFE66D); // 下载 - 金黄色
  static const Color profileColor = Color(0xFFA78BFA); // 我的 - 浅紫

  // 辅助颜色
  static const Color successColor = Color(0xFF48BB78); // 成功绿
  static const Color warningColor = Color(0xFFF6AD55); // 警告橙
  static const Color errorColor = Color(0xFFF56565); // 错误红
  static const Color infoColor = Color(0xFF4299E1); // 信息蓝

  // 分割线色
  static const Color dividerColor = Color(0xFFE2E8F0); // 浅灰分割线

  // 按钮色
  static const Color primaryButton = Color(0xFF7C3AED); // 主按钮紫色
  static const Color secondaryButton = Color(0xFFEBF4FF); // 次按钮浅蓝

  // 获取导航项颜色
  static Color getNavItemColor(String navId) {
    switch (navId) {
      case 'recommend':
        return recommendColor;
      case 'category':
        return categoryColor;
      case 'download':
        return downloadColor;
      case 'profile':
        return profileColor;
      default:
        return primaryButton;
    }
  }

  // 渐变色
  static LinearGradient get primaryGradient => const LinearGradient(
    colors: [primaryGradientStart, primaryGradientEnd],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
