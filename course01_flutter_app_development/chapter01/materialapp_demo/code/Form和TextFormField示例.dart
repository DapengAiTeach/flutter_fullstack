import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Form & TextFormField 示例',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // 创建一个 GlobalKey 用于 Form 的状态管理
  final _formKey = GlobalKey<FormState>();

  // 创建控制器，用于获取 TextFormField 输入的文本
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  // 表单验证
  String? _validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return '请输入用户名';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return '请输入密码';
    }
    if (value.length < 6) {
      return '密码长度至少为 6 个字符';
    }
    return null;
  }

  // 提交表单时的回调函数
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // 如果验证通过，显示成功信息
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('登录成功！')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('登录表单')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey, // 将 GlobalKey 与 Form 关联
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // 用户名输入框
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: '用户名',
                  border: OutlineInputBorder(),
                ),
                validator: _validateUsername, // 设置验证规则
              ),
              SizedBox(height: 20), // 添加间距
              // 密码输入框
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: '密码',
                  border: OutlineInputBorder(),
                ),
                obscureText: true, // 隐藏密码输入
                validator: _validatePassword, // 设置验证规则
              ),
              SizedBox(height: 30), // 添加间距
              // 登录按钮
              ElevatedButton(
                onPressed: _submitForm, // 点击按钮时提交表单
                child: Text('登录'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
