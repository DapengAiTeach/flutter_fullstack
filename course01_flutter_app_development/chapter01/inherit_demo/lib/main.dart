import 'package:flutter/material.dart';

// === 老爸（基类） ===
class Animal {
  // 公有财产
  String name;
  // 老爸的构造函数
  Animal(this.name);

  // 默认行为
  void speak() => debugPrint('$name: ......（沉默）');
}

// === 儿子（子类） ===
// 关键字 extends 就是“继承”
class Dog extends Animal {
  // 把 name 传给老爸
  Dog(String name) : super(name);

  // 重写老爸的功能
  @override
  void speak() => debugPrint('$name: 汪汪!');
}

// === 女儿（另一个子类） ===
class Cat extends Animal {
  Cat(String name) : super(name);
  @override
  void speak() => debugPrint('$name: 喵喵~');
}

// === 界面：点按钮听叫声 ===
void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('3 行代码看懂继承')),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  // 同一句话，不同结果
                  onPressed: () => Dog('阿黄').speak(),
                  child: const Text('让狗叫'),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => Cat('小咪').speak(),
                  child: const Text('让猫叫'),
                ),
              ]),
        ),
      ),
    );
  }
}