// ============================================================================
// Flutter 应用入口文件
// ============================================================================
// 这是一个标准的 Flutter 计数器应用示例
// 展示了 Flutter 的基本概念：无状态组件、有状态组件、状态管理、UI 构建等

// 导入 Flutter 的 Material Design 组件库
// Material Design 是 Google 推出的设计语言，Flutter 提供了完整的实现
import 'package:flutter/material.dart';

// ============================================================================
// 应用入口函数
// ============================================================================
// main() 是 Dart 程序的入口点，应用从这里开始执行
void main() {
  // runApp() 是 Flutter 框架提供的函数，用于启动 Flutter 应用
  // 它接收一个 Widget 作为参数，这个 Widget 将成为整个应用的根组件
  runApp(const MyApp());
}

// ============================================================================
// 根组件 - MyApp (无状态组件)
// ============================================================================
// StatelessWidget: 无状态组件，适用于不需要管理内部状态的场景
// 无状态组件一旦创建，其属性就不会改变，只依赖于传入的参数
class MyApp extends StatelessWidget {
  // 构造函数
  // super.key: 调用父类构造函数，传递 key 参数
  // key 用于在 Widget 树中唯一标识组件，帮助 Flutter 高效地更新 UI
  // const: 编译时常量，可以提高性能
  const MyApp({super.key});

  // build() 方法是 Widget 的核心
  // 它描述了这个组件应该如何显示
  // BuildContext 提供了 Widget 在树中的位置信息
  @override
  Widget build(BuildContext context) {
    // MaterialApp: Flutter 应用的顶层容器
    // 它提供了导航、主题、本地化等功能
    return MaterialApp(
      // 应用标题，在任务管理器中显示
      title: 'Flutter Demo',

      // 主题配置
      // ThemeData 定义了应用的视觉风格（颜色、字体、形状等）
      theme: ThemeData(
        // ColorScheme.fromSeed: 从一个种子颜色生成完整的配色方案
        // 这样可以确保整个应用的颜色协调统一
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),

      // home: 应用启动时显示的第一个页面
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// ============================================================================
// 首页组件 - MyHomePage (有状态组件)
// ============================================================================
// StatefulWidget: 有状态组件，适用于需要管理内部状态的场景
// 有状态组件分为两部分：
//   1. StatefulWidget 本身（不可变，只负责创建 State）
//   2. State 对象（可变，负责管理状态和构建 UI）
class MyHomePage extends StatefulWidget {
  // 构造函数
  // required this.title: 必需参数，调用时必须传递 title
  const MyHomePage({super.key, required this.title});

  // final: 表示这个变量只能赋值一次，之后不可修改
  // 这是 StatefulWidget 的特点：Widget 本身不可变，状态存储在 State 中
  final String title;

  // createState() 方法用于创建与此 Widget 关联的 State 对象
  // Flutter 会调用这个方法来创建状态管理对象
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// ============================================================================
// 首页状态类 - _MyHomePageState
// ============================================================================
// 以下划线 _ 开头表示这是一个私有类，只能在当前文件中访问
// State<MyHomePage> 泛型指定了这个 State 关联的 StatefulWidget 类型
class _MyHomePageState extends State<MyHomePage> {
  // ============================================================================
  // 状态变量
  // ============================================================================
  // _counter: 计数器的值，这是一个可变的状态变量
  // 当这个值改变时，需要调用 setState() 来通知 Flutter 重新构建 UI
  int _counter = 0;

  // ============================================================================
  // 状态更新方法
  // ============================================================================
  // 点击按钮时调用此方法，增加计数器的值
  void _incrementCounter() {
    // setState() 是 Flutter 状态管理的核心方法
    // 作用：
    //   1. 执行传入的回调函数，更新状态变量
    //   2. 通知 Flutter 框架这个组件的状态已改变
    //   3. 触发 build() 方法重新执行，更新 UI
    setState(() {
      // 计数器自增
      _counter++;
    });
  }

  // ============================================================================
  // UI 构建方法
  // ============================================================================
  // build() 方法定义了 UI 的结构
  // 每次调用 setState() 后，这个方法会被重新执行
  @override
  Widget build(BuildContext context) {
    // Scaffold: Material Design 的页面脚手架
    // 提供了标准的页面结构：AppBar、Body、FloatingActionButton 等
    return Scaffold(
      // ========================================================================
      // 顶部导航栏
      // ========================================================================
      appBar: AppBar(
        // 背景色：从主题的配色方案中获取反转的主色调
        // Theme.of(context) 获取当前上下文的主题数据
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        // 标题文本
        // widget.title: 通过 widget 属性访问 StatefulWidget 中定义的属性
        title: Text(widget.title),
      ),

      // ========================================================================
      // 页面主体内容
      // ========================================================================
      body: Center(
        // Center: 将子组件居中显示

        // Column: 垂直方向排列子组件的布局组件
        child: Column(
          // mainAxisAlignment: 主轴（垂直方向）的对齐方式
          // MainAxisAlignment.center: 子组件在垂直方向居中
          mainAxisAlignment: MainAxisAlignment.center,

          // children: Column 的子组件列表
          children: <Widget>[
            // 提示文本
            const Text('You have pushed the button this many times:'),

            // 显示计数器的值
            Text(
              // '$_counter': 字符串插值，将 _counter 的值转换为字符串
              '$_counter',

              // style: 文本样式
              // Theme.of(context).textTheme.headlineMedium:
              // 从主题中获取预定义的中等标题文本样式
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),

      // ========================================================================
      // 浮动操作按钮
      // ========================================================================
      // FloatingActionButton: Material Design 的浮动按钮
      // 通常用于页面的主要操作
      floatingActionButton: FloatingActionButton(
        // onPressed: 按钮点击时的回调函数
        onPressed: _incrementCounter,

        // tooltip: 长按按钮时显示的提示文本
        tooltip: 'Increment',

        // child: 按钮内部显示的内容
        // Icon(Icons.add): Material Design 的加号图标
        child: const Icon(Icons.add),
      ),
    );
  }
}

// ============================================================================
// Flutter 核心概念总结
// ============================================================================
/*
1. Widget（组件）
   - Flutter 中一切皆 Widget
   - Widget 是不可变的，用于描述 UI 的配置
   - 分为 StatelessWidget（无状态）和 StatefulWidget（有状态）

2. StatelessWidget（无状态组件）
   - 一旦创建，其属性就不会改变
   - 只依赖于传入的参数
   - 适用于静态内容的展示

3. StatefulWidget（有状态组件）
   - 可以管理内部状态
   - 由 Widget 和 State 两部分组成
   - Widget 不可变，State 可变
   - 适用于需要交互和动态更新的场景

4. State（状态）
   - 存储组件的可变数据
   - setState() 方法用于更新状态并触发 UI 重建
   - State 的生命周期独立于 Widget

5. BuildContext（构建上下文）
   - 代表 Widget 在树中的位置
   - 用于访问主题、导航、媒体查询等功能

6. 声明式 UI
   - Flutter 使用声明式编程范式
   - UI = f(state)：UI 是状态的函数
   - 状态改变 → 重新构建 UI

7. 组件树
   - Flutter 应用是一个组件树
   - 父组件包含子组件，形成层次结构
   - 树的根节点是 runApp() 传入的 Widget

8. 热重载（Hot Reload）
   - 修改代码后，按 r 键即可快速看到效果
   - 无需重启应用，极大提高开发效率
   - 保留应用状态，只更新修改的部分
*/
