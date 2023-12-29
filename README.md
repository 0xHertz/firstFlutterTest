# 简介

A new Flutter project for study.

# 项目结构

## Flutter项目结构

```
my_flutter_app/
  ├── android/
  ├── ios/
  ├── lib/
  │   ├── main.dart
  ├── test/
  ├── assets/
  ├── pubspec.yaml
```

**android/ 和 ios/**：包含 Android 和 iOS 项目文件，如果你需要进行平台特定的配置，可以在这里进行修改。

**lib/**：包含 Dart 代码的目录，这是你主要编写代码的地方。

**main.dart**：Flutter 应用的入口点，通常包含 main() 函数。
**test/**：包含测试代码的目录。

**pubspec.yaml**：Flutter 项目的配置文件，其中包含了项目的依赖项（如第三方库）、资源文件、应用名称等信息。第三方库就是在代码中`import`时使用的

对于大型项目，你可能还会看到以下目录：

**assets/**：包含应用程序使用的静态资源文件，如图像、字体等。

**lib/screens/**：包含应用程序的不同屏幕或页面的 Dart 文件。

**lib/widgets/**：包含可重用的小部件（Widgets）。

在主要的 Dart 文件中（通常是 lib/main.dart），你将编写应用程序的入口代码，加载根小部件并启动应用程序。然后，你可以组织代码以创建各种小部件和页面，并将它们放在相应的目录中。

## Dart语言学习

本次提交主要应用了如下widget

根节点`MaterialApp`

> 属性
>
> ```
> home:MyHome() // 定义根页面
> routes: {     // 定义静态(命名)路由
>         "CheckHome":(context)=>CheckHome(),
>         "LogPage":(context)=>LogHome()
>       },
> theme:ThemeData{} // 定义全局主题
> ```

页面必须被`Scaffold`包裹

`Container` `Padding ` `Center`等页面仅能包裹一个子节点, 因此需要在里面包裹多个子节点时, 可以用`Rows` 或者 `Column`包裹所有子节点

> **BoxDecoration**设置Container属性
>
> ```dart
> //设置阴影
> decoration: BoxDecoration(
>     borderRadius: BorderRadius.circular(50.0), // 设置圆角
>     boxShadow: [
>         BoxShadow(
>             color: Colors.grey.withOpacity(0.3),
>             spreadRadius: 1,
>             blurRadius: 1,
>             offset: Offset(0, 0),
>         ),
>     ],
> ),
> ```
>
> **InputDecoration**设置TextField属性
>
> ```dart
> InputDecoration(
>     filled: true, // 启用填充颜色
>     fillColor: Colors.white, // 设置填充颜色
>     border: InputBorder.none, // 取消边框
>     // 圆角设置
>     enabledBorder: OutlineInputBorder(
>         borderRadius: BorderRadius.circular(50.0),
>         borderSide: BorderSide(color: Colors.transparent), // 必须设置 transparent 边框颜色
>     ),
>     focusedBorder: OutlineInputBorder(
>         borderRadius: BorderRadius.circular(50.0),
>         borderSide: BorderSide(color: Colors.transparent),
>     ),
>     hintText: 'Search for Something...', // 提示文本
>     prefixIcon: Padding(
>         padding: EdgeInsets.only(left: 10.0), // 设置图标左侧间距,
>         child: Icon(
>             Icons.search,
>             size: 30.0,
>         ), // 搜索图标,
>     ),
>     // border: OutlineInputBorder(
>     //   borderRadius: BorderRadius.circular(50.0), // 设置边框圆角
>     //   borderSide: BorderSide(
>     //     width: 10.0, // 设置边框粗细
>     //   ),
>     // ), // 边框样式
> )
> ```
>
> **EdgeInsets**设置Padding属性
>
> ```dart
> padding: EdgeInsets.all(16.0), // 设置所有外边距
> padding: EdgeInsets.symmetric(vertical: 16.0), //使用EdgeInsets只设置上下边距
> padding: EdgeInsets.only(left: 10.0), // 设置图标左侧间距,
> ```
>
> `Rows`中间空白,两边对齐
>
> ```dart
> mainAxisAlignment: MainAxisAlignment.spaceBetween,// 中间空白,两边对齐
> ```
>
> `Column`  和 `GridView`嵌套时,由于两者都是填满所以空间, 导致高度无限, 页面无法显示
>
> ```dart
> Expanded(
> 	child:GridView
> ) // 使用Expanded包裹
> ```
>
> `TextField`没有阴影属性,因此可以将其外层套一个有阴影属性的元素



