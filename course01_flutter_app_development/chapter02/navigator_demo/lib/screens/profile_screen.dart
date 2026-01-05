import 'package:flutter/material.dart';

/// 个人中心屏幕
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('我的'),
        elevation: 0,
        backgroundColor: const Color(0xFFF44336),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 用户信息卡片
            Container(
              color: const Color(0xFFF44336),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: const Icon(
                      Icons.person,
                      size: 48,
                      color: Color(0xFFF44336),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    '用户昵称',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'user@example.com',
                    style: TextStyle(fontSize: 14, color: Colors.white70),
                  ),
                ],
              ),
            ),
            // 统计信息
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildStatItem('关注', '128'),
                  _buildStatItem('粉丝', '456'),
                  _buildStatItem('获赞', '789'),
                ],
              ),
            ),
            const Divider(),
            // 功能菜单
            _buildMenuItem('我的订单', Icons.shopping_bag, const Color(0xFFF44336)),
            _buildMenuItem('我的收藏', Icons.favorite, const Color(0xFFF44336)),
            _buildMenuItem('我的评价', Icons.star, const Color(0xFFF44336)),
            _buildMenuItem(
              '我的钱包',
              Icons.wallet_giftcard,
              const Color(0xFFF44336),
            ),
            const Divider(),
            // 其他选项
            _buildMenuItem('编辑资料', Icons.edit, const Color(0xFFF44336)),
            _buildMenuItem('隐私设置', Icons.lock, const Color(0xFFF44336)),
            _buildMenuItem(
              '帮助与反馈',
              Icons.help_outline,
              const Color(0xFFF44336),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(String label, String count) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }

  Widget _buildMenuItem(String title, IconData icon, Color color) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward, size: 20),
      onTap: () {},
    );
  }
}
