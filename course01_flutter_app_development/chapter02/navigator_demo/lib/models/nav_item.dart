import 'package:flutter/material.dart';

/// 页面构建器类型定义
typedef PageBuilder = Widget Function();

/// 导航栏项数据模型
class NavItem {
  /// 项的唯一标识
  final String id;

  /// 显示的标签文本
  final String label;

  /// 导航项的图标
  final IconData icon;

  /// 导航项的主题颜色
  final Color color;

  /// 页面构建器 - 用于创建对应的页面
  final PageBuilder pageBuilder;

  /// 可选的描述信息
  final String? description;

  NavItem({
    required this.id,
    required this.label,
    required this.icon,
    required this.color,
    required this.pageBuilder,
    this.description,
  });

  /// 创建副本，用于修改某些属性
  NavItem copyWith({
    String? id,
    String? label,
    IconData? icon,
    Color? color,
    PageBuilder? pageBuilder,
    String? description,
  }) {
    return NavItem(
      id: id ?? this.id,
      label: label ?? this.label,
      icon: icon ?? this.icon,
      color: color ?? this.color,
      pageBuilder: pageBuilder ?? this.pageBuilder,
      description: description ?? this.description,
    );
  }

  @override
  String toString() => 'NavItem(id: $id, label: $label)';
}
