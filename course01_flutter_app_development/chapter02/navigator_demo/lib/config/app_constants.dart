/// 应用常量 - 保留所有非主题相关的常数
/// 颜色相关的配置完全由 Theme + ThemeExtension 管理
class AppConstants {
  // ============ 尺寸常量 ============
  /// 默认内边距
  static const double defaultPadding = 16.0;

  /// 默认圆角半径
  static const double defaultBorderRadius = 12.0;

  /// 小内边距
  static const double smallPadding = 8.0;

  /// 大内边距
  static const double largePadding = 24.0;

  // ============ 动画常量 ============
  /// 默认动画时长
  static const Duration defaultAnimationDuration = Duration(milliseconds: 300);

  /// 快速动画
  static const Duration fastAnimationDuration = Duration(milliseconds: 150);

  /// 缓慢动画
  static const Duration slowAnimationDuration = Duration(milliseconds: 500);

  // ============ 其他常量 ============
  /// 卡片阴影（极简风格使用 0）
  static const double cardElevation = 0.0;

  /// 导航栏高度
  static const double navBarHeight = 60.0;

  /// 应用栏高度
  static const double appBarHeight = 56.0;
}
