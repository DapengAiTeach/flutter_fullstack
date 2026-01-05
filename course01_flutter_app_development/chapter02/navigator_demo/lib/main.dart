import 'package:flutter/material.dart';
import 'config/navigation_config.dart';
import 'screens/home_screen.dart';
import 'screens/search_screen.dart';
import 'screens/messages_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/profile_screen.dart';
import 'widgets/custom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '导航栏示例',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
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

  /// 屏幕列表 - 对应导航配置中的各项
  late final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const MessagesScreen(),
    const SettingsScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// 使用 IndexedStack 保持所有屏幕状态
      body: IndexedStack(index: _selectedIndex, children: _screens),

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
