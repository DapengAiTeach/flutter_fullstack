import 'package:flutter/material.dart';
import '../config/color_config.dart';
import '../widgets/custom_search_app_bar.dart';

/// 我的页面 - 主题色：浅紫色 #A78BFA
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomSearchAppBar(
        hintText: '搜索...',
        prefixIconColor: ColorConfig.profileColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 用户信息卡片
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    ColorConfig.profileColor.withOpacity(0.1),
                    ColorConfig.profileColor.withOpacity(0.05),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: ColorConfig.profileColor.withOpacity(0.2),
                  width: 1,
                ),
              ),
              child: Row(
                children: [
                  // 头像
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: ColorConfig.profileColor.withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: ColorConfig.profileColor,
                    ),
                  ),
                  const SizedBox(width: 16),
                  // 用户信息
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '用户名',
                          style: Theme.of(context).textTheme.titleLarge
                              ?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: ColorConfig.textColor,
                              ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'user@example.com',
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(color: ColorConfig.secondaryText),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConfig.profileColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            '普通会员',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // 统计信息
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildStatItem(context, '收藏', '128'),
                  _buildStatItem(context, '下载', '256'),
                  _buildStatItem(context, '浏览', '1.2k'),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Divider(),
            // 功能菜单
            _buildMenuSection(context, '功能', [
              {
                'icon': Icons.favorite_outline,
                'label': '我的收藏',
                'color': ColorConfig.profileColor,
              },
              {
                'icon': Icons.history,
                'label': '浏览历史',
                'color': ColorConfig.profileColor,
              },
              {
                'icon': Icons.cloud_download_outlined,
                'label': '下载管理',
                'color': ColorConfig.profileColor,
              },
            ]),
            const Divider(),
            // 设置菜单
            _buildMenuSection(context, '设置', [
              {
                'icon': Icons.edit,
                'label': '编辑资料',
                'color': ColorConfig.profileColor,
              },
              {
                'icon': Icons.lock_outline,
                'label': '隐私设置',
                'color': ColorConfig.profileColor,
              },
              {
                'icon': Icons.help_outline,
                'label': '帮助与反馈',
                'color': ColorConfig.profileColor,
              },
            ]),
            const Divider(),
            // 登出按钮
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                    backgroundColor: ColorConfig.profileColor,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  child: const Text(
                    '登出账户',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(BuildContext context, String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: ColorConfig.profileColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(label, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }

  Widget _buildMenuSection(
    BuildContext context,
    String sectionTitle,
    List<Map<String, dynamic>> items,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: Text(
            sectionTitle,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: ColorConfig.secondaryText,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ...items.map(
          (item) => _buildMenuItem(
            context,
            item['icon'] as IconData,
            item['label'] as String,
            item['color'] as Color,
          ),
        ),
      ],
    );
  }

  Widget _buildMenuItem(
    BuildContext context,
    IconData icon,
    String label,
    Color color,
  ) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(label),
      trailing: const Icon(Icons.arrow_forward, size: 18),
      onTap: () {},
      dense: true,
    );
  }
}
