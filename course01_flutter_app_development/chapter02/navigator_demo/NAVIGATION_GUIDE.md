# 通用底部导航栏实现指南

## 概述

这是一个基于 **Dart 类配置 + 自定义导航栏** 的通用解决方案，支持完全的配置化和模块化。

## 项目结构

```
lib/
├── config/
│   └── navigation_config.dart        # ⭐ 导航栏配置文件（核心）
├── models/
│   └── nav_item.dart                 # 导航项数据模型
├── widgets/
│   ├── custom_nav_bar.dart           # 自定义导航栏组件
│   └── nav_item_widget.dart          # 单个导航项组件
├── screens/
│   ├── home_screen.dart              # 首页示例
│   ├── search_screen.dart            # 搜索页示例
│   ├── messages_screen.dart          # 消息页示例
│   ├── settings_screen.dart          # 设置页示例
│   └── profile_screen.dart           # 个人中心示例
└── main.dart                         # 应用主文件
```

## 快速开始

### 1. 基础使用

在 `main.dart` 中使用导航栏：

```dart
import 'package:flutter/material.dart';
import 'config/navigation_config.dart';
import 'widgets/custom_nav_bar.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens, // 你的屏幕列表
      ),
      bottomNavigationBar: CustomNavBar(
        items: NavigationConfig.navItems,
        selectedIndex: _selectedIndex,
        onItemTapped: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
```

### 2. 修改导航项配置

编辑 `lib/config/navigation_config.dart`：

```dart
static final List<NavItem> navItems = [
  NavItem(
    id: 'home',
    label: '首页',                    // 修改标签文字
    icon: Icons.home_outlined,        // 修改图标
    color: const Color(0xFF2196F3),   // 修改颜色
    description: '应用首页',
  ),
  // ... 其他导航项
];
```

### 3. 自定义样式配置

在 `navigation_config.dart` 中修改 `NavBarStyleConfig`：

```dart
static const NavBarStyleConfig styleConfig = NavBarStyleConfig(
  height: 65.0,              // 导航栏高度
  backgroundColor: Colors.white,    // 背景色
  borderRadius: 16.0,        // 圆角半径
  elevation: 8.0,            // 阴影大小
  itemSpacing: 8.0,          // 项之间的间距
  iconSize: 28.0,            // 图标大小
  labelFontSize: 12.0,       // 标签字体大小
);
```

### 4. 自定义动画配置

修改 `NavBarAnimationConfig`：

```dart
static const NavBarAnimationConfig animationConfig = NavBarAnimationConfig(
  duration: Duration(milliseconds: 300),  // 动画时长
  curve: Curves.easeInOut,                // 动画曲线
);
```

## 核心特性

### ✅ 完全配置化
- 修改导航项无需改动代码逻辑
- 所有配置集中在 `navigation_config.dart`
- 支持动态修改（通过 `updateItem` 方法）

### ✅ 模块化设计
- 导航栏、导航项分离为独立组件
- 易于维护和扩展
- 可复用的数据模型和配置类

### ✅ 平滑动画效果
- 图标缩放动画
- 文字颜色和粗细动画
- 可自定义动画配置

### ✅ 灵活的扩展性
- 支持添加新的导航项
- 支持自定义样式配置
- 支持自定义动画效果

## 常见修改场景

### 场景1: 修改导航项的颜色

```dart
NavItem(
  id: 'home',
  label: '首页',
  icon: Icons.home_outlined,
  color: Colors.green,  // 改为绿色
)
```

### 场景2: 修改导航栏高度

```dart
static const NavBarStyleConfig styleConfig = NavBarStyleConfig(
  height: 80.0,  // 改为80
  // ... 其他配置
);
```

### 场景3: 添加新的导航项

```dart
// 在 navItems 列表中添加
NavItem(
  id: 'notification',
  label: '通知',
  icon: Icons.notifications_outlined,
  color: const Color(0xFFFFEB3B),
  description: '通知中心',
),
```

### 场景4: 修改动画时长

```dart
static const NavBarAnimationConfig animationConfig = NavBarAnimationConfig(
  duration: Duration(milliseconds: 500),  // 改为500ms
  curve: Curves.easeInOut,
);
```

## API 文档

### NavigationConfig

```dart
// 获取所有导航项
List<NavItem> items = NavigationConfig.navItems;

// 根据ID获取导航项
NavItem? item = NavigationConfig.getItemById('home');

// 获取所有导航项ID
List<String> ids = NavigationConfig.getAllItemIds();

// 更新导航项
NavigationConfig.updateItem('home', newNavItem);

// 获取样式配置
NavBarStyleConfig style = NavigationConfig.styleConfig;

// 获取动画配置
NavBarAnimationConfig animation = NavigationConfig.animationConfig;
```

### CustomNavBar

```dart
CustomNavBar(
  items: List<NavItem>,                    // 必须：导航项列表
  selectedIndex: int,                      // 必须：选中项索引
  onItemTapped: ValueChanged<int>,         // 必须：项点击回调
  styleConfig: NavBarStyleConfig?,         // 可选：自定义样式
  animationConfig: NavBarAnimationConfig?, // 可选：自定义动画
)
```

### NavItem

```dart
NavItem(
  id: String,              // 必须：唯一标识
  label: String,           // 必须：标签文本
  icon: IconData,          // 必须：图标
  color: Color,            // 必须：颜色
  description: String?,    // 可选：描述信息
)
```

## 更高级的用法

### 动态更新导航项

```dart
// 在运行时更新导航项
setState(() {
  NavigationConfig.updateItem('home', NavItem(
    id: 'home',
    label: '首页（新）',
    icon: Icons.home_filled,
    color: Colors.blue,
  ));
});
```

### 自定义导航栏样式

```dart
CustomNavBar(
  items: NavigationConfig.navItems,
  selectedIndex: _selectedIndex,
  onItemTapped: (index) {
    setState(() {
      _selectedIndex = index;
    });
  },
  // 自定义样式
  styleConfig: NavBarStyleConfig(
    height: 80.0,
    backgroundColor: Colors.grey[100],
    borderRadius: 20.0,
    elevation: 12.0,
  ),
  // 自定义动画
  animationConfig: NavBarAnimationConfig(
    duration: Duration(milliseconds: 400),
    curve: Curves.elasticOut,
  ),
)
```

## 三种方案对比

| 特性 | 方案一（JSON） | 方案二（Dart类）| 方案三（Provider）|
|------|-------|-------|--------|
| 配置化 | ✅ | ✅ | ✅ |
| 模块化 | ✅ | ✅ | ✅ |
| 类型安全 | ❌ | ✅ | ✅ |
| IDE支持 | ❌ | ✅ | ✅ |
| 灵活性 | 一般 | 很高 | 最高 |
| 学习曲线 | 低 | 中 | 高 |
| 适用场景 | 简单应用 | 中等应用 | 复杂应用 |

我们选择了 **方案二（Dart类配置）**，因为它具有最好的类型安全性和灵活性。

## 故障排除

### Q: 导航栏未显示
A: 检查 `CustomNavBar` 是否正确放在 `bottomNavigationBar` 属性中

### Q: 点击导航项无效
A: 确保 `onItemTapped` 回调正确更新了 `_selectedIndex`

### Q: 样式未应用
A: 修改 `NavigationConfig.styleConfig` 中的值并重新运行应用

### Q: 动画太快/太慢
A: 调整 `NavigationConfig.animationConfig.duration` 的值

## 最佳实践

1. **集中管理配置** - 所有配置都应该在 `navigation_config.dart` 中
2. **使用常量** - 使用 `const` 声明配置以获得更好的性能
3. **合理命名** - 为导航项的 `id` 使用有意义的名称
4. **保持一致** - 保持导航项的颜色和图标风格一致
5. **测试多尺寸** - 在不同屏幕尺寸上测试导航栏

## 许可证

MIT License

## 作者

Flutter 全栈开发课程

---

**祝你使用愉快！** 🎉

有任何问题，请参考代码注释或查看示例页面的实现。
