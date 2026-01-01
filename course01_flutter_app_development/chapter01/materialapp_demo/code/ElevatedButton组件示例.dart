import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ElevatedButton 示例',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ElevatedButtonPage(),
    );
  }
}

class ElevatedButtonPage extends StatefulWidget {
  @override
  _ElevatedButtonPageState createState() => _ElevatedButtonPageState();
}

class _ElevatedButtonPageState extends State<ElevatedButtonPage> {
  String _buttonText = "点击按钮";

  // 按钮点击回调函数
  void _onButtonPressed() {
    setState(() {
      _buttonText = "按钮已点击！";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ElevatedButton 示例')),
      body: Center(
        // 使用 Center 来确保 Column 居中
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            // 垂直居中
            mainAxisAlignment: MainAxisAlignment.center,
            // 水平居中
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // 显示按钮点击的文本
              Text(
                _buttonText,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20), // 添加间距
              // ElevatedButton 用于创建一个有阴影效果的按钮
              ElevatedButton(
                // 按钮点击时执行的回调函数
                onPressed: _onButtonPressed,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  // 设置按钮背景色
                  backgroundColor: Colors.blue,
                  // 按钮内边距
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  shape: RoundedRectangleBorder(
                    // 设置按钮圆角
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text('点击我'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
