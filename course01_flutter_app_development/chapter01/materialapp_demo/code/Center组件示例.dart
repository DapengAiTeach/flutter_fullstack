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
      title: 'Flutter Center 示例',
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
      appBar: AppBar(title: Text('Flutter Center 示例')),
      // 设置页面的主体部分内容
      body: Center(
        // Center 组件将其子组件居中显示
        child: Column(
          // 设置 Column 的对齐方式为居中
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // 这是一个简单的文本组件
            Text(
              'Hello, Flutter!',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // 这是另一个文本组件
            Text(
              '这是通过 Center 组件居中的文本。',
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
