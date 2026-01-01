import 'package:flutter/material.dart';

// 主函数，应用的入口
void main() {
  runApp(MyApp());
}

// 定义一个名为MyApp的StatelessWidget类
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold 是 Flutter 应用中常用的布局组件之一，提供了常见的页面结构
    return MaterialApp(
      home: const HomePage(),
    );
  }
}

// 主页的Widget
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Scaffold 用于构建一个应用的基本视觉结构
    return Scaffold(
      // AppBar 是位于顶部的应用栏，用于显示标题、操作按钮等
      appBar: AppBar(
        title: const Text('Flutter Scaffold Example'),
        // 可在AppBar上添加更多操作按钮，如导航、设置等
      ),
      // body 是 Scaffold 的主体部分，用于显示页面的主要内容
      body: Center(
        // Center 是一个将其子组件居中的小部件
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ElevatedButton 是一个凸起的按钮，用于执行点击操作
            ElevatedButton(
              onPressed: () {
                // 按钮点击时，执行相应的逻辑
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Button Pressed'),
                    content: const Text('You pressed the button!'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context); // 关闭对话框
                        },
                        child: const Text('Close'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Press Me'),
            ),
            const SizedBox(height: 20), // 添加一个间距
            const Text('Welcome to Scaffold Demo!'),
          ],
        ),
      ),
      // bottomNavigationBar 是底部的导航栏，可以添加页面切换按钮
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
        onTap: (index) {
          // 可以根据选中的索引进行页面切换
          if (index == 0) {
            // 切换到主页
          } else if (index == 1) {
            // 切换到搜索页面
          }
        },
      ),
    );
  }
}