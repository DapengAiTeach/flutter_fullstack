import 'package:flutter/material.dart';
import '../models/nav_item.dart';

/// 导航栏配置类 - 集中管理所有导航项配置
///
/// 使用方式：
/// ```dart
/// final config = NavigationConfig();
/// final navItems = config.navItems;
/// ```
///
/// 修改导航项：只需修改 navItems 列表中的配置即可
class NavigationConfig {
  /// 定义所有导航项
  static final List<NavItem> navItems = [
    NavItem(
      id: 'home',
      label: '首页',
      icon: Icons.home_outlined,
      color: const Color(0xFF2196F3), // 蓝色
      description: '应用首页',
    ),
    NavItem(
      id: 'search',
      label: '搜索',
      icon: Icons.search_outlined,
      color: const Color(0xFF4CAF50), // 绿色
      description: '搜索功能',
    ),
    NavItem(
      id: 'messages',
      label: '消息',
      icon: Icons.chat_bubble_outline,
      color: const Color(0xFFFF9800), // 橙色
      description: '消息中心',
    ),
    NavItem(
      id: 'settings',
      label: '设置',
      icon: Icons.settings_outlined,
      color: const Color(0xFF9C27B0), // 紫色
      description: '应用设置',
    ),
    NavItem(
      id: 'profile',
      label: '我的',
      icon: Icons.person_outline,
      color: const Color(0xFFF44336), // 红色
      description: '个人中心',
    ),
  ];

  /// 导航栏样式配置
  static const NavBarStyleConfig styleConfig = NavBarStyleConfig(
    height: 65.0,
    backgroundColor: Colors.white,
    borderRadius: 16.0,
    elevation: 8.0,
    itemSpacing: 8.0,
    iconSize: 28.0,
    labelFontSize: 12.0,
  );

  /// 动画配置
  static const NavBarAnimationConfig animationConfig = NavBarAnimationConfig(
    duration: Duration(milliseconds: 300),
    curve: Curves.easeInOut,
  );

  /// 根据 ID 获取导航项
  static NavItem? getItemById(String id) {
    try {
      return navItems.firstWhere((item) => item.id == id);
    } catch (e) {
      return null;
    }
  }

  /// 获取所有导航项 ID
  static List<String> getAllItemIds() {
    return navItems.map((item) => item.id).toList();
  }

  /// 更新导航项配置
  static void updateItem(String id, NavItem newItem) {
    final index = navItems.indexWhere((item) => item.id == id);
    if (index != -1) {
      navItems[index] = newItem;
    }
  }
}

/// 导航栏样式配置
class NavBarStyleConfig {
  final double height;
  final Color backgroundColor;
  final double borderRadius;
  final double elevation;
  final double itemSpacing;
  final double iconSize;
  final double labelFontSize;

  const NavBarStyleConfig({
    this.height = 65.0,
    this.backgroundColor = Colors.white,
    this.borderRadius = 16.0,
    this.elevation = 8.0,
    this.itemSpacing = 8.0,
    this.iconSize = 28.0,
    this.labelFontSize = 12.0,
  });
}

/// 导航栏动画配置
class NavBarAnimationConfig {
  final Duration duration;
  final Curve curve;

  const NavBarAnimationConfig({
    this.duration = const Duration(milliseconds: 300),
    this.curve = Curves.easeInOut,
  });
}
