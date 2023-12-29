import 'package:flutter/material.dart';

import '../check/CheckView.dart';
import '../check/XxcView.dart';
import '../check/YspView.dart';

class CheckHome extends StatefulWidget {
  // 构造函数
  @override
  State<CheckHome> createState() => _CheckHomeState();

  List<Widget> widgets = [XxcView(),YspView(),CheckView()];
}

class _CheckHomeState extends State<CheckHome> with SingleTickerProviderStateMixin{
  // 卡片标题
  List tabs = ["下现场检查","音视频检查","查看数据"];
  // 控制器
  late TabController _controller = TabController(length: tabs.length, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        bottom: TabBar(
          controller: _controller,
          tabs: tabs.map((e) => Tab(text:e)).toList(),
        ),
      ),
      body: TabBarView(
        children: widget.widgets,// 上面定义的widgets数组
        controller: _controller,
      ),
    );
  }

}