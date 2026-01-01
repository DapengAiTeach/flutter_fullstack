import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 使用 MaterialApp 来包裹整个应用，设置主题和首页
    return MaterialApp(
      title: 'Flutter TextField 示例',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TextFieldPage(),
    );
  }
}

class TextFieldPage extends StatefulWidget {
  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  // 用于控制文本框的内容
  final TextEditingController _controller = TextEditingController();

  // 用于存储输入的文本
  String _inputText = "";

  // 当用户点击按钮时，更新显示的文本
  void _updateText() {
    setState(() {
      _inputText = _controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter TextField 示例')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // TextField 用于接收用户输入
            TextField(
              controller: _controller, // 控制文本框的内容
              decoration: InputDecoration(
                labelText: '请输入文本', // 输入框的提示文本
                border: OutlineInputBorder(), // 设置输入框的边框
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ), // 聚焦时边框颜色
                ),
              ),
              onChanged: (text) {
                // 当文本框内容发生变化时，更新 _inputText
                setState(() {
                  _inputText = text;
                });
              },
            ),
            SizedBox(height: 20), // 添加间距
            // 显示用户输入的文本
            Text(
              '你输入的文本是: $_inputText',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40), // 添加间距
            // 按钮，点击时更新显示的文本
            ElevatedButton(onPressed: _updateText, child: Text('更新文本')),
          ],
        ),
      ),
    );
  }
}
