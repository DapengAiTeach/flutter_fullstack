import 'package:flutter/material.dart';

/// 艺术创意风格 - 现代化亮/暗主题色彩配置
/// 该配置定义了整个壁纸APP的完整色彩系统
class ColorConfig {
  // ============ 亮色主题颜色 ============

  // 基础颜色 - 亮色
  static const Color lightPrimary = Color(0xFF7C3AED); // 紫色
  static const Color lightPrimaryLight = Color(0xFFA78BFA); // 浅紫
  static const Color lightSecondary = Color(0xFF0EA5E9); // 蓝色

  // 背景颜色 - 亮色
  static const Color lightBg = Color(0xFFFFFFFF); // 白色背景
  static const Color lightCardBg = Color(0xFFF8F9FA); // 卡片浅灰
  static const Color lightInputBg = Color(0xFFF3F4F6); // 输入框浅灰

  // 文字颜色 - 亮色
  static const Color lightText = Color(0xFF1F2937); // 主文字深灰
  static const Color lightTextSecondary = Color(0xFF6B7280); // 次文字灰
  static const Color lightTextTertiary = Color(0xFF9CA3AF); // 三级文字浅灰
  static const Color lightHint = Color(0xFFA0AEC0); // 提示文字

  // 边界/分割线 - 亮色
  static const Color lightBorder = Color(0xFFE5E7EB); // 分割线浅灰
  static const Color lightDivider = Color(0xFFE5E7EB); // 分割线

  // 页面主题色 - 亮色
  static const Color lightPageHome = Color(0xFFEF4444); // 推荐 - 红色
  static const Color lightPageCategory = Color(0xFF10B981); // 分类 - 绿色
  static const Color lightPageDownload = Color(0xFFF59E0B); // 下载 - 橙色
  static const Color lightPageProfile = Color(0xFF8B5CF6); // 我的 - 紫色

  // 功能颜色 - 亮色
  static const Color lightSuccess = Color(0xFF10B981); // 成功绿
  static const Color lightWarning = Color(0xFFF59E0B); // 警告橙
  static const Color lightError = Color(0xFFEF4444); // 错误红
  static const Color lightInfo = Color(0xFF0EA5E9); // 信息蓝

  // ============ 暗色主题颜色 ============

  // 基础颜色 - 暗色
  static const Color darkPrimary = Color(0xA78BFA); // 浅紫
  static const Color darkPrimaryLight = Color(0xFFC4B5FD); // 更浅紫
  static const Color darkSecondary = Color(0xFF38BDF8); // 浅蓝

  // 背景颜色 - 暗色
  static const Color darkBg = Color(0xFF0F172A); // 深黑背景
  static const Color darkCardBg = Color(0xFF1E293B); // 卡片深灰
  static const Color darkInputBg = Color(0xFF334155); // 输入框中灰

  // 文字颜色 - 暗色
  static const Color darkText = Color(0xFFF1F5F9); // 主文字浅白
  static const Color darkTextSecondary = Color(0xFFCBD5E1); // 次文字灰
  static const Color darkTextTertiary = Color(0xFF94A3B8); // 三级文字较深灰
  static const Color darkHint = Color(0xFF64748B); // 提示文字深灰

  // 边界/分割线 - 暗色
  static const Color darkBorder = Color(0xFF334155); // 分割线深灰
  static const Color darkDivider = Color(0xFF334155); // 分割线

  // 页面主题色 - 暗色
  static const Color darkPageHome = Color(0xFFFCA5A5); // 推荐 - 亮红
  static const Color darkPageCategory = Color(0xFF6EE7B7); // 分类 - 亮绿
  static const Color darkPageDownload = Color(0xFFFBBF24); // 下载 - 亮橙
  static const Color darkPageProfile = Color(0xFFE9D5FF); // 我的 - 亮紫

  // 功能颜色 - 暗色
  static const Color darkSuccess = Color(0xFF6EE7B7); // 成功绿
  static const Color darkWarning = Color(0xFFFBBF24); // 警告橙
  static const Color darkError = Color(0xFFFCA5A5); // 错误红
  static const Color darkInfo = Color(0xFF38BDF8); // 信息蓝

  // ============ 兼容性常量 (保持向后兼容) ============
  // 默认使用亮色主题的颜色
  static const Color primaryGradientStart = lightPrimary;
  static const Color primaryGradientEnd = lightSecondary;

  static const Color backgroundColor = lightBg;
  static const Color cardBackground = lightCardBg;

  static const Color textColor = lightText;
  static const Color secondaryText = lightTextSecondary;
  static const Color hintText = lightHint;
  static const Color dividerColor = lightBorder;

  static const Color primaryButton = lightPrimary;
  static const Color secondaryButton = Color(0xFFEBF4FF);

  static const Color recommendColor = lightPageHome;
  static const Color categoryColor = lightPageCategory;
  static const Color downloadColor = lightPageDownload;
  static const Color profileColor = lightPageProfile;

  static const Color successColor = lightSuccess;
  static const Color warningColor = lightWarning;
  static const Color errorColor = lightError;
  static const Color infoColor = lightInfo;

  /// 获取导航项颜色
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
