import 'package:flutter/material.dart';

/// 搜索屏幕
class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('搜索'),
        elevation: 0,
        backgroundColor: const Color(0xFF4CAF50),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 搜索框
              TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: '搜索内容...',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                ),
              ),
              const SizedBox(height: 24),
              // 热搜标签
              const Text(
                '热搜',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _buildTag('Flutter'),
                  _buildTag('Dart'),
                  _buildTag('导航栏'),
                  _buildTag('UI设计'),
                  _buildTag('移动开发'),
                  _buildTag('状态管理'),
                ],
              ),
              const SizedBox(height: 32),
              // 搜索历史
              const Text(
                '搜索历史',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              ListTile(
                leading: const Icon(Icons.history),
                title: const Text('上次搜索'),
                trailing: const Icon(Icons.close),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTag(String tag) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        tag,
        style: const TextStyle(fontSize: 13, color: Color(0xFF4CAF50)),
      ),
    );
  }
}
