import 'package:flutter/material.dart';

/// 应用颜色主题扩展 - 管理所有主题相关的自定义颜色
/// 包括页面主题色、功能色等，支持亮暗模式自动切换
class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  // ============ 页面主题色 ============
  /// 推荐页主题色
  final Color pageRecommendColor;

  /// 分类页主题色
  final Color pageCategoryColor;

  /// 下载页主题色
  final Color pageDownloadColor;

  /// 我的页主题色
  final Color pageProfileColor;

  // ============ 功能颜色 ============
  /// 成功色
  final Color successColor;

  /// 警告色
  final Color warningColor;

  /// 错误色
  final Color errorColor;

  /// 信息色
  final Color infoColor;

  AppColorsExtension({
    required this.pageRecommendColor,
    required this.pageCategoryColor,
    required this.pageDownloadColor,
    required this.pageProfileColor,
    required this.successColor,
    required this.warningColor,
    required this.errorColor,
    required this.infoColor,
  });

  /// 获取指定页面的主题色
  Color getPageColor(String pageId) {
    switch (pageId) {
      case 'recommend':
        return pageRecommendColor;
      case 'category':
        return pageCategoryColor;
      case 'download':
        return pageDownloadColor;
      case 'profile':
        return pageProfileColor;
      default:
        return pageRecommendColor;
    }
  }

  @override
  ThemeExtension<AppColorsExtension> copyWith({
    Color? pageRecommendColor,
    Color? pageCategoryColor,
    Color? pageDownloadColor,
    Color? pageProfileColor,
    Color? successColor,
    Color? warningColor,
    Color? errorColor,
    Color? infoColor,
  }) {
    return AppColorsExtension(
      pageRecommendColor: pageRecommendColor ?? this.pageRecommendColor,
      pageCategoryColor: pageCategoryColor ?? this.pageCategoryColor,
      pageDownloadColor: pageDownloadColor ?? this.pageDownloadColor,
      pageProfileColor: pageProfileColor ?? this.pageProfileColor,
      successColor: successColor ?? this.successColor,
      warningColor: warningColor ?? this.warningColor,
      errorColor: errorColor ?? this.errorColor,
      infoColor: infoColor ?? this.infoColor,
    );
  }

  @override
  ThemeExtension<AppColorsExtension> lerp(
    ThemeExtension<AppColorsExtension>? other,
    double t,
  ) {
    if (other is! AppColorsExtension) {
      return this;
    }
    return AppColorsExtension(
      pageRecommendColor:
          Color.lerp(pageRecommendColor, other.pageRecommendColor, t) ??
          pageRecommendColor,
      pageCategoryColor:
          Color.lerp(pageCategoryColor, other.pageCategoryColor, t) ??
          pageCategoryColor,
      pageDownloadColor:
          Color.lerp(pageDownloadColor, other.pageDownloadColor, t) ??
          pageDownloadColor,
      pageProfileColor:
          Color.lerp(pageProfileColor, other.pageProfileColor, t) ??
          pageProfileColor,
      successColor:
          Color.lerp(successColor, other.successColor, t) ?? successColor,
      warningColor:
          Color.lerp(warningColor, other.warningColor, t) ?? warningColor,
      errorColor: Color.lerp(errorColor, other.errorColor, t) ?? errorColor,
      infoColor: Color.lerp(infoColor, other.infoColor, t) ?? infoColor,
    );
  }
}
