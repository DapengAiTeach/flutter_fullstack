import 'package:flutter/material.dart';
import 'config/navigation_config.dart';
import 'themes/app_theme.dart';
import 'widgets/custom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '壁纸APP',
      theme: AppTheme.theme,
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// 当前选中的导航项索引
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    /// 从导航配置中自动生成屏幕列表
    /// 这样修改导航项时，只需在 navigation_config.dart 中修改配置
    final screens = NavigationConfig.navItems
        .map((item) => item.pageBuilder())
        .toList();

    return Scaffold(
      /// 使用 IndexedStack 保持所有屏幕状态
      body: IndexedStack(index: _selectedIndex, children: screens),

      /// 自定义底部导航栏
      bottomNavigationBar: CustomNavBar(
        items: NavigationConfig.navItems,
        selectedIndex: _selectedIndex,
        onItemTapped: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
