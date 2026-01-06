import 'package:flutter/material.dart';
import '../themes/app_colors_extension.dart';
import '../widgets/custom_search_app_bar.dart';

/// 下载管理页面
class DownloadScreen extends StatefulWidget {
  const DownloadScreen({Key? key}) : super(key: key);

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  final List<Map<String, dynamic>> downloads = [
    {'name': '风景壁纸 1', 'size': '2.3 MB', 'date': '2024-01-05', 'progress': 1.0},
    {'name': '人物壁纸 1', 'size': '1.8 MB', 'date': '2024-01-04', 'progress': 1.0},
    {'name': '动漫壁纸 1', 'size': '3.1 MB', 'date': '2024-01-03', 'progress': 1.0},
    {'name': '创意壁纸 1', 'size': '2.5 MB', 'date': '2024-01-02', 'progress': 1.0},
    {'name': '植物壁纸 1', 'size': '2.1 MB', 'date': '2024-01-01', 'progress': 1.0},
  ];

  @override
  Widget build(BuildContext context) {
    final accentColor =
        Theme.of(context).extension<AppColorsExtension>()?.pageDownloadColor ??
        Color(0xFF6366F1);
    final errorColor =
        Theme.of(context).extension<AppColorsExtension>()?.errorColor ??
        Color(0xFFEF4444);

    return Scaffold(
      appBar: CustomSearchAppBar(
        title: '下载',
        hintText: '搜索下载...',
        prefixIconColor: accentColor,
      ),
      body: downloads.isEmpty
          ? _buildEmptyState(context, accentColor)
          : ListView.builder(
              itemCount: downloads.length,
              itemBuilder: (context, index) {
                final download = downloads[index];
                return _buildDownloadItem(
                  context,
                  download,
                  index,
                  accentColor,
                  errorColor,
                );
              },
            ),
    );
  }

  Widget _buildEmptyState(BuildContext context, Color accentColor) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.cloud_download_outlined,
            size: 80,
            color: accentColor.withOpacity(0.3),
          ),
          const SizedBox(height: 16),
          Text('还没有下载任何壁纸', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          Text('前往推荐或分类页面下载壁纸吧', style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }

  Widget _buildDownloadItem(
    BuildContext context,
    Map<String, dynamic> download,
    int index,
    Color accentColor,
    Color errorColor,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Theme.of(context).colorScheme.outlineVariant,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            // 缩略图
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: accentColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.image, size: 40, color: accentColor),
            ),
            const SizedBox(width: 12),
            // 信息部分
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    download['name'],
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        download['size'],
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 4,
                        height: 4,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.outlineVariant,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        download['date'],
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // 进度条
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: LinearProgressIndicator(
                      value: download['progress'],
                      backgroundColor: Theme.of(
                        context,
                      ).colorScheme.outlineVariant,
                      valueColor: AlwaysStoppedAnimation<Color>(accentColor),
                      minHeight: 4,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            // 操作按钮
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.preview),
                  color: accentColor,
                  iconSize: 20,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
                const SizedBox(height: 8),
                IconButton(
                  onPressed: () {
                    setState(() {
                      downloads.removeAt(index);
                    });
                  },
                  icon: const Icon(Icons.delete_outline),
                  color: errorColor,
                  iconSize: 20,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
