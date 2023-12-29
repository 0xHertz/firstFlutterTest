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

