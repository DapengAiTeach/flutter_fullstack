import 'package:flutter/material.dart';

// 这是应用程序的入口点
void main() {
  runApp(MyApp());
}

// MyApp 类是整个应用的根组件，继承自 StatelessWidget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 返回 MaterialApp 组件，作为应用的根部件
    return MaterialApp(
      // 设置应用程序的标题
      title: 'Flutter Text 示例',
      // 指定主题
      theme: ThemeData(primarySwatch: Colors.blue),
      // 应用的首页是 MyHomePage
      home: MyHomePage(),
    );
  }
}

// MyHomePage 是应用的主页，继承自 StatelessWidget
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold 是应用的主要布局结构，包含 AppBar 和 Body 等
    return Scaffold(
      // 设置 AppBar，作为页面的顶部栏
      appBar: AppBar(title: Text('Flutter Text 示例')),
      // 设置页面的主体部分内容
      body: Padding(
        // Padding 用于给组件添加内边距
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // Column 用于垂直排列子组件
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 这是一个简单的文本组件
            Text(
              'Hello, Flutter!',
              style: TextStyle(
                // 设置字体大小
                fontSize: 32,
                // 设置字体粗细
                fontWeight: FontWeight.bold,
                // 设置文本颜色
                color: Colors.blue,
                // 设置字母间距
                letterSpacing: 2.0,
                // 设置单词间距
                wordSpacing: 4.0,
              ),
            ),
            SizedBox(height: 20),
            // 另一个带有样式的文本组件
            Text(
              '这是一个 Flutter 的 Text 组件示例。',
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
                // 设置字体样式为斜体
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 20),
            // 使用 Text.rich 显示多样式文本
            Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Flutter ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  TextSpan(
                    text: '是一个强大的框架。',
                    style: TextStyle(
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
