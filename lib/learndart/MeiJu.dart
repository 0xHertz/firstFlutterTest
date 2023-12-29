// 库的使用
// 系统库导入
import 'dart:html';
import 'dart:ui';
// 自定义库导入
import 'BaseLearn.dart';
// 导入别名
import 'BaseLearn.dart' as B;
// 导入某个部分或者隐藏某个部分
// import 'utils/TimeUtil' show  timeUtil, FileUtil;
// import 'utils/TimeUtil' hide  timeUtil;
// 导入第三方库，现在pubspec.yaml中配置，再在终端中执行pub get
import 'package:flutter/painting.dart';

enum Colors{
  red,
  blue,
  yellow
}

// useage
void main () {
  final color = Colors.blue;
  var p = Person("name")
  ..skin=color;
  print(color);
}