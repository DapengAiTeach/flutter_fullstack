import 'package:flutter/material.dart';
import '../config/color_config.dart';
import '../widgets/custom_search_app_bar.dart';

/// 推荐页面 - 主题色：热情红 #FF6B6B
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomSearchAppBar(
        title: '推荐',
        hintText: '搜索壁纸...',
        prefixIconColor: ColorConfig.recommendColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 精选推荐标题
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
              child: Text(
                '✨ 精选推荐',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: ColorConfig.recommendColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // 推荐壁纸网格
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
              ),
              itemCount: 8,
              itemBuilder: (context, index) {
                return _buildWallpaperCard(context, '精选壁纸 ${index + 1}', index);
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildWallpaperCard(BuildContext context, String title, int index) {
    final colors = [
      const Color(0xFFFF6B6B),
      const Color(0xFFFF8E72),
      const Color(0xFFFFA94D),
      const Color(0xFFFFBD39),
    ];

    return GestureDetector(
      onTap: () {},
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Stack(
          children: [
            // 壁纸预览
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  colors: [
                    colors[index % colors.length],
                    colors[(index + 1) % colors.length],
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            // 标题和下载按钮
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0),
                      Colors.black.withOpacity(0.6),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    SizedBox(
                      height: 28,
                      child: FilledButton(
                        onPressed: () {},
                        style: FilledButton.styleFrom(
                          backgroundColor: ColorConfig.recommendColor,
                          padding: EdgeInsets.zero,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.download, size: 16),
                            SizedBox(width: 4),
                            Text('下载', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
