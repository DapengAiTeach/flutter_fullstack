import 'package:flutter/material.dart';

// 主函数，应用的入口
void main() {
  runApp(MyApp());
}

// 定义一个名为MyApp的StatelessWidget类
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp是Flutter应用的核心，提供了主题、路由等功能
    return MaterialApp(
      // 我们不再使用localizationsDelegates来提供本地化支持
      // 只支持中文和英文
      supportedLocales: const [Locale('en'), Locale('zh')],
      initialRoute: '/', // 初始路由
      routes: {
        // '/'路由显示主页
        '/': (_) => const HomePage(),
        // '/detail'路由显示详细页面
        '/detail': (_) => const DetailPage(),
      },
      // onUnknownRoute用于处理未知路由，返回一个默认的页面
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (_) => const UnknownPage(),
      ),
    );
  }
}

// 主页的Widget
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // 点击按钮时导航到'/detail'路由，显示详情页
            Navigator.pushNamed(context, '/detail');
          },
          child: const Text('Go to Detail Page'),
        ),
      ),
    );
  }
}

// 详情页的Widget
class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Page')),
      body: Center(child: const Text('This is the detail page')),
    );
  }
}

// 未知页面的Widget，用于处理未知路由
class UnknownPage extends StatelessWidget {
  const UnknownPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Unknown Page')),
      body: Center(child: const Text('404 - Page not found')),
    );
  }
}
