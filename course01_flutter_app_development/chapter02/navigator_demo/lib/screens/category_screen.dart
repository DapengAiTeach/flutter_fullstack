import 'package:flutter/material.dart';
import '../themes/app_colors_extension.dart';
import '../widgets/custom_search_app_bar.dart';

/// 分类页面
class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final accentColor =
        Theme.of(context).extension<AppColorsExtension>()?.pageCategoryColor ??
        Color(0xFF6366F1);

    final categories = [
      {'name': '人物', 'icon': Icons.person, 'count': '2.3k'},
      {'name': '风景', 'icon': Icons.landscape, 'count': '5.1k'},
      {'name': '动漫', 'icon': Icons.animation, 'count': '3.8k'},
      {'name': '建筑', 'icon': Icons.domain, 'count': '1.9k'},
      {'name': '植物', 'icon': Icons.eco, 'count': '2.1k'},
      {'name': '汽车', 'icon': Icons.directions_car, 'count': '1.5k'},
      {'name': '美女', 'icon': Icons.face, 'count': '4.2k'},
      {'name': '创意', 'icon': Icons.palette, 'count': '2.9k'},
      {'name': '宠物', 'icon': Icons.pets, 'count': '1.8k'},
    ];

    return Scaffold(
      appBar: CustomSearchAppBar(
        title: '分类',
        hintText: '搜索分类...',
        prefixIconColor: accentColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 分类标题
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 12),
              child: Text(
                '🎨 分类浏览',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: accentColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // 分类网格
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.9,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
              ),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return _buildCategoryCard(
                  context,
                  category['name'] as String,
                  category['icon'] as IconData,
                  category['count'] as String,
                  accentColor,
                );
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(
    BuildContext context,
    String name,
    IconData icon,
    String count,
    Color accentColor,
  ) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: accentColor.withOpacity(0.2), width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: accentColor.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: accentColor, size: 32),
            ),
            const SizedBox(height: 8),
            Text(
              name,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              count,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: accentColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
