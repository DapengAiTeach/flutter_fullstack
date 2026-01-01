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
      title: 'Flutter AppBar 示例',
      // 指定主题
      theme: ThemeData(primarySwatch: Colors.blue),
      // 应用的首页是 MyHomePage
      home: MyHomePage(),
    );
  }
}

// MyHomePage 是应用的主页，继承自 StatefulWidget
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// _MyHomePageState 是 MyHomePage 的状态类
class _MyHomePageState extends State<MyHomePage> {
  // 页面标题
  String _title = 'Flutter AppBar 示例';

  // 当点击 AppBar 中的按钮时，改变标题内容
  void _changeTitle() {
    setState(() {
      _title = '标题已更改！';
    });
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold 是应用的主要布局结构，包含 AppBar 和 Body 等
    return Scaffold(
      // 设置 AppBar，作为页面的顶部栏
      appBar: AppBar(
        // 在 AppBar 中设置标题
        title: Text(_title),
        // 在 AppBar 中添加一个按钮，用于修改标题
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            // 点击按钮时调用 _changeTitle 方法
            onPressed: _changeTitle,
          ),
        ],
      ),
      // 设置页面的主体部分内容
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 一个显示当前标题的文本
            Text('当前标题是:', style: TextStyle(fontSize: 24)),
            // 显示当前的标题
            Text(
              _title,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
