import 'package:flutter/material.dart';

class MyHead extends StatefulWidget{
  String text;
  MyHead(this.text);
  @override
  State<StatefulWidget> createState() => _MyHeadState();
}

class _MyHeadState extends State<MyHead> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(height: 30.0,)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,// 中间空白,两边对齐
          children: [
            Text(
              // 通过widget访问MyHead的属性
              widget.text,
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  // 需要在pubspec.ymal中设置
                  fontFamily: 'SiYuan',
                  fontSize: 40.0
              ),
            ),
            SizedBox(width: 10.0),
            CircleAvatar(
              radius: 30.0, // 头像半径
              backgroundImage: AssetImage('images/user_avatar.png'), // 用户头像图片
            )
          ],
        )
      ]
    );
  }

}