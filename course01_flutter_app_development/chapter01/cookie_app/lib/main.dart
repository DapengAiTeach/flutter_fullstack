import 'package:flutter/material.dart';
import 'cookie.dart';
import 'cookie_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('0基础看懂Dart类')),
        body: Center(
          // 一列，可以有很多个子组件
          // 经常用来做垂直布局
          child: Column(
            // 主轴对齐方式：居中对齐
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 用模具做了第一块饼干
              CookieWidget(Cookie('巧克力', 12)),
              // 用来做边距的，撑开两个组件的距离
              const SizedBox(height: 20),
              // 第二块饼干
              CookieWidget(Cookie('牛奶', 8)),
            ],
          ),
        ),
      ),
    );
  }
}