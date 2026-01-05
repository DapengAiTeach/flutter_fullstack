import 'package:flutter/material.dart';
import '../models/nav_item.dart';
import '../config/navigation_config.dart';
import 'nav_item_widget.dart';

/// 自定义底部导航栏组件
///
/// 这是一个完全可配置的导航栏，支持：
/// - 通过配置文件修改导航项（名称、图标、颜色）
/// - 平滑的动画过渡效果
/// - 高度可定制的样式
///
/// 使用示例：
/// ```dart
/// CustomNavBar(
///   items: NavigationConfig.navItems,
///   selectedIndex: _selectedIndex,
///   onItemTapped: (index) {
///     setState(() {
///       _selectedIndex = index;
///     });
///   },
/// )
/// ```
class CustomNavBar extends StatelessWidget {
  /// 导航项列表
  final List<NavItem> items;

  /// 当前选中项的索引
  final int selectedIndex;

  /// 项点击回调
  final ValueChanged<int> onItemTapped;

  /// 自定义样式配置（可选）
  final NavBarStyleConfig? styleConfig;

  /// 自定义动画配置（可选）
  final NavBarAnimationConfig? animationConfig;

  const CustomNavBar({
    Key? key,
    required this.items,
    required this.selectedIndex,
    required this.onItemTapped,
    this.styleConfig,
    this.animationConfig,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 使用自定义配置或默认配置
    final style = styleConfig ?? NavigationConfig.styleConfig;
    final animation = animationConfig ?? NavigationConfig.animationConfig;

    return Container(
      height: style.height,
      decoration: BoxDecoration(
        color: style.backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(style.borderRadius),
          topRight: Radius.circular(style.borderRadius),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: style.elevation,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          items.length,
          (index) => NavItemWidget(
            item: items[index],
            isSelected: selectedIndex == index,
            onTap: () => onItemTapped(index),
          ),
        ),
      ),
    );
  }
}
