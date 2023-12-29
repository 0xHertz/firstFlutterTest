import 'package:flutter/material.dart';

class MySearch extends StatefulWidget{

  // 要在其他页面使用，需要定义构造函数
  MySearch();
  @override
  State<StatefulWidget> createState() => _MySearchState();

}

class _MySearchState extends State<MySearch>{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0), //使用EdgeInsets只设置上下边距
      child: Container(
        //设置阴影
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0), // 设置圆角
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: TextField(
          decoration: InputDecoration(
            filled: true, // 启用填充颜色
            fillColor: Colors.white, // 设置填充颜色
            border: InputBorder.none, // 取消边框
            // 圆角设置
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: BorderSide(color: Colors.transparent), // 必须设置 transparent 边框颜色
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            hintText: 'Search for Something...', // 提示文本
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 10.0), // 设置图标左侧间距,
              child: Icon(
                Icons.search,
                size: 30.0,
              ), // 搜索图标,
            ),
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(50.0), // 设置边框圆角
            //   borderSide: BorderSide(
            //     width: 10.0, // 设置边框粗细
            //   ),
            // ), // 边框样式
          ),
          onChanged: (value) {
            // 处理输入变化事件
            print('Search query: $value');
          },
        ),
      )
    );
  }

}