import 'package:flutter/material.dart';
import '../models/nav_item.dart';
import '../config/navigation_config.dart';

/// 单个导航项组件
class NavItemWidget extends StatelessWidget {
  /// 导航项数据
  final NavItem item;

  /// 是否选中
  final bool isSelected;

  /// 点击回调
  final VoidCallback onTap;

  const NavItemWidget({
    Key? key,
    required this.item,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleConfig = NavigationConfig.styleConfig;
    final animationConfig = NavigationConfig.animationConfig;

    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 图标部分 - 添加动画效果
            AnimatedScale(
              scale: isSelected ? 1.2 : 1.0,
              duration: animationConfig.duration,
              curve: animationConfig.curve,
              child: Icon(
                item.icon,
                size: styleConfig.iconSize,
                color: isSelected ? item.color : Colors.grey[400],
              ),
            ),
            const SizedBox(height: 4),
            // 标签部分 - 添加颜色过渡动画
            AnimatedDefaultTextStyle(
              style: TextStyle(
                fontSize: styleConfig.labelFontSize,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                color: isSelected ? item.color : Colors.grey[600],
              ),
              duration: animationConfig.duration,
              curve: animationConfig.curve,
              child: Text(item.label),
            ),
          ],
        ),
      ),
    );
  }
}
