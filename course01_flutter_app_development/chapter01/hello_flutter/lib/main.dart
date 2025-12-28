import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('第一块积木')),
        body: const Center(
          child: Text('你好，Widget！'),   // ← 这就是最基础的 Text Widget
        ),
      ),
    );
  }
}