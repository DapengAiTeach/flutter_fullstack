import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '卡片式登录页面',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // 表单控制器
  final _formKey = GlobalKey<FormState>();

  // 用户名和密码输入框控制器
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  // 模拟后端登录请求
  Future<void> _simulateLogin() async {
    await Future.delayed(Duration(seconds: 2));  // 模拟延迟
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('登录成功!')),
    );
  }

  // 提交表单并进行验证
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // 如果验证通过，模拟登录
      _simulateLogin();
    }
  }

  // 用户名验证
  String? _validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return '请输入用户名';
    }
    return null;
  }

  // 密码验证
  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return '请输入密码';
    }
    if (value.length < 6) {
      return '密码至少需要6个字符';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '登录',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
        elevation: 4,  // 添加阴影效果
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.lightBlue],  // 渐变色背景
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: SingleChildScrollView(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),  // 圆角卡片
                ),
                elevation: 8,  // 卡片阴影
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        // 用户名输入框
                        TextFormField(
                          controller: _usernameController,
                          decoration: InputDecoration(
                            labelText: '用户名',
                            labelStyle: TextStyle(color: Colors.blue),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            border: OutlineInputBorder(),
                          ),
                          validator: _validateUsername,  // 用户名验证
                        ),
                        SizedBox(height: 16),  // 间距

                        // 密码输入框
                        TextFormField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: '密码',
                            labelStyle: TextStyle(color: Colors.blue),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            border: OutlineInputBorder(),
                          ),
                          validator: _validatePassword,  // 密码验证
                        ),
                        SizedBox(height: 32),  // 间距

                        // 登录按钮
                        ElevatedButton(
                          onPressed: _submitForm,  // 提交表单
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,  // 按钮背景色
                            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Text(
                            '登录',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
