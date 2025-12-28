import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstPage());
  }
}

// ----------------- 第一个页面 -----------------
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FirstPage')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 按钮 1：用 Context 找“老大”——Scaffold
            ElevatedButton(
              onPressed: () {
                // 通过上下文找到脚手架对象
                final scaffold = ScaffoldMessenger.of(context);
                // 通过脚手架调用通知方法
                scaffold.showSnackBar(
                  const SnackBar(
                    content: Text('Context 帮我找到了 ScaffoldMessenger'),
                  ),
                );
              },
              child: const Text('弹出 SnackBar'),
            ),

            // 按钮 2：用 Context 跳页面
            ElevatedButton(
              onPressed: () {
                // 调用导航器的跳转方法
                Navigator.push(
                  context, // 没有它，Navigator 就迷路
                  // MaterialPageRoute 页面路由
                  MaterialPageRoute(builder: (_) => SecondPage()),
                );
              },
              child: const Text('跳到 SecondPage'),
            ),

            // 按钮 3：用 Context 拿主题颜色
            Container(
              width: 100,
              height: 100,
              // Context 告诉我在哪套主题里
              color: Theme.of(context).primaryColor,
              alignment: Alignment.center,
              child: const Text('主题色', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

// ----------------- 第二个页面 -----------------
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SecondPage')),
      body: Center(
        child: ElevatedButton(
          // 再用 Context 回去
          onPressed: () => Navigator.pop(context),
          child: const Text('返回'),
        ),
      ),
    );
  }
}
