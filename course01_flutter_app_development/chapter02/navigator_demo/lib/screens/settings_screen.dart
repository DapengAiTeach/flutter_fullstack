import 'package:flutter/material.dart';

/// 设置屏幕
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;
  String _selectedLanguage = '中文';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('设置'),
        elevation: 0,
        backgroundColor: const Color(0xFF9C27B0),
      ),
      body: ListView(
        children: [
          // 通知设置
          _buildSectionHeader('通知设置'),
          ListTile(
            title: const Text('启用通知'),
            subtitle: const Text('接收应用推送消息'),
            trailing: Switch(
              value: _notificationsEnabled,
              onChanged: (value) {
                setState(() {
                  _notificationsEnabled = value;
                });
              },
              activeColor: const Color(0xFF9C27B0),
            ),
          ),
          // 显示设置
          _buildSectionHeader('显示设置'),
          ListTile(
            title: const Text('深色模式'),
            subtitle: const Text('使用深色主题'),
            trailing: Switch(
              value: _darkModeEnabled,
              onChanged: (value) {
                setState(() {
                  _darkModeEnabled = value;
                });
              },
              activeColor: const Color(0xFF9C27B0),
            ),
          ),
          ListTile(
            title: const Text('语言'),
            subtitle: Text(_selectedLanguage),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () => _showLanguageDialog(),
          ),
          // 关于设置
          _buildSectionHeader('关于'),
          ListTile(
            title: const Text('应用版本'),
            subtitle: const Text('1.0.0'),
            trailing: const Icon(Icons.arrow_forward),
          ),
          ListTile(
            title: const Text('检查更新'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          ListTile(
            title: const Text('隐私政策'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          ListTile(
            title: const Text('用户协议'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          // 登出按钮
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF9C27B0),
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('已登出')));
              },
              child: const Text('登出账户', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Color(0xFF9C27B0),
        ),
      ),
    );
  }

  void _showLanguageDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('选择语言'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildLanguageOption('中文'),
            _buildLanguageOption('English'),
            _buildLanguageOption('日本語'),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguageOption(String language) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedLanguage = language;
        });
        Navigator.pop(context);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Radio<String>(
              value: language,
              groupValue: _selectedLanguage,
              onChanged: (value) {
                setState(() {
                  _selectedLanguage = value ?? '中文';
                });
                Navigator.pop(context);
              },
              activeColor: const Color(0xFF9C27B0),
            ),
            Text(language),
          ],
        ),
      ),
    );
  }
}
