import 'package:flutter/material.dart';
import 'cookie.dart';

class CookieWidget extends StatelessWidget {
  // 成员变量：饼干
  final Cookie cookie;
  // 构造方法
  const CookieWidget(this.cookie, {super.key});

  @override
  Widget build(BuildContext context) {
    return Chip(
      // 头像
      avatar: const Icon(
          Icons.cookie,
          color: Colors.brown,
      ),
      // 文本
      label: Text(cookie.describe()),
      // 背景色
      backgroundColor: Colors.amber[100],
    );
  }
}