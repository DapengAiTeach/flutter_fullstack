import 'package:flutter/material.dart';

/// 艺术创意风格 - 色彩配置
/// 这个配置文件定义了整个壁纸APP的色彩系统
class ColorConfig {
  // 主题渐变色
  static const Color primaryGradientStart = Color(0xFF7C3AED); // 紫色
  static const Color primaryGradientEnd = Color(0xFF0EA5E9); // 蓝色

  // 全局背景色
  static const Color backgroundColor = Color(0xFFFFFFFF); // 白色
  static const Color cardBackground = Color(0xFFF5F5F5); // 浅灰卡片背景

  // 文字颜色
  static const Color textColor = Color(0xFF2D3748); // 深灰
  static const Color secondaryText = Color(0xFF718096); // 次文字浅灰
  static const Color hintText = Color(0xFFA0AEC0); // 提示文字

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
