import 'package:flutter/material.dart';
import '../models/nav_item.dart';
import '../screens/home_screen.dart';
import '../screens/category_screen.dart';
import '../screens/download_screen.dart';
import '../screens/profile_screen.dart';
import '../config/color_config.dart';

/// 导航栏配置类 - 集中管理所有导航项配置和对应的页面
///
/// 艺术创意风格 - 壁纸APP导航配置
/// 每个导航项都包含页面构建器，修改时只需在此文件中修改
class NavigationConfig {
  /// 定义所有导航项 + 页面构建器
  static final List<NavItem> navItems = [
    NavItem(
      id: 'recommend',
      label: '首页',
      icon: Icons.home_outlined,
      color: ColorConfig.recommendColor, // 热情红
      pageBuilder: () => const HomeScreen(),
      description: '精选推荐',
    ),
    NavItem(
      id: 'category',
      label: '分类',
      icon: Icons.category_outlined,
      color: ColorConfig.categoryColor, // 青绿色
      pageBuilder: () => const CategoryScreen(),
      description: '分类浏览',
    ),
    NavItem(
      id: 'download',
      label: '下载',
      icon: Icons.download_outlined,
      color: ColorConfig.downloadColor, // 金黄色
      pageBuilder: () => const DownloadScreen(),
      description: '下载管理',
    ),
    NavItem(
      id: 'profile',
      label: '我的',
      icon: Icons.person_outline,
      color: ColorConfig.profileColor, // 浅紫色
      pageBuilder: () => const ProfileScreen(),
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
