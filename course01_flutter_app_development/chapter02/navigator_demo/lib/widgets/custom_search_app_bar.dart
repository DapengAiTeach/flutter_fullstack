import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';

/// 自定义搜索AppBar组件 - 包含搜索框和主题切换按钮
class CustomSearchAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  /// 搜索框提示文字
  final String hintText;

  /// 搜索框前缀图标颜色
  final Color prefixIconColor;

  /// 搜索内容变化回调
  final Function(String)? onSearchChanged;

  /// 搜索提交回调
  final Function(String)? onSearchSubmitted;

  const CustomSearchAppBar({
    Key? key,
    this.hintText = '搜索...',
    required this.prefixIconColor,
    this.onSearchChanged,
    this.onSearchSubmitted,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      title: _buildSearchField(context),
      actions: [_buildThemeSwitchButton(context), const SizedBox(width: 8)],
    );
  }

  /// 构建搜索框
  Widget _buildSearchField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(Icons.search, color: prefixIconColor),
          prefixIconColor: prefixIconColor,
          filled: true,
          fillColor: Theme.of(context).scaffoldBackgroundColor,
          contentPadding: const EdgeInsets.symmetric(vertical: 8),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Theme.of(context).dividerColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Theme.of(context).dividerColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: prefixIconColor, width: 2),
          ),
        ),
        onChanged: onSearchChanged,
        onSubmitted: onSearchSubmitted,
      ),
    );
  }

  /// 构建主题切换按钮
  Widget _buildThemeSwitchButton(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return IconButton(
          icon: Icon(_getThemeIcon(themeProvider.themeMode)),
          tooltip: '切换主题',
          onPressed: () async {
            await themeProvider.toggleTheme();
          },
        );
      },
    );
  }

  /// 获取主题模式对应的图标
  IconData _getThemeIcon(ThemeMode themeMode) {
    switch (themeMode) {
      case ThemeMode.light:
        return Icons.light_mode;
      case ThemeMode.dark:
        return Icons.dark_mode;
      case ThemeMode.system:
        return Icons.brightness_auto;
    }
  }
}
