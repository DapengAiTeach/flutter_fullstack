import 'package:flutter/material.dart';

/// 消息屏幕
class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('消息'),
        elevation: 0,
        backgroundColor: const Color(0xFFFF9800),
      ),
      body: ListView(
        children: [
          _buildMessageTile(
            '张三',
            '最后一条消息内容...',
            Icons.account_circle,
            const Color(0xFFFF9800),
            true,
            3,
          ),
          _buildMessageTile(
            '李四',
            '谢谢！',
            Icons.account_circle,
            const Color(0xFFFF9800),
            false,
            0,
          ),
          _buildMessageTile(
            '王五',
            '下午见面讨论一下项目',
            Icons.account_circle,
            const Color(0xFFFF9800),
            false,
            0,
          ),
          _buildMessageTile(
            '项目组',
            '会议已取消',
            Icons.group,
            const Color(0xFFFF9800),
            false,
            0,
          ),
        ],
      ),
    );
  }

  Widget _buildMessageTile(
    String name,
    String message,
    IconData icon,
    Color color,
    bool hasNew,
    int badge,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[200]!)),
      ),
      child: Row(
        children: [
          Stack(
            children: [
              Icon(icon, size: 48, color: color),
              if (hasNew)
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        badge.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  message,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Text(
            '10:30',
            style: TextStyle(fontSize: 12, color: Colors.grey[400]),
          ),
        ],
      ),
    );
  }
}
