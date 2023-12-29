import 'package:first/widgets/MyHead.dart';
import 'package:flutter/material.dart';

import '../../widgets/MySearch.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {
  final List<Map<String,dynamic>> buttonList = [
    {"text":"下现场检查","icon":Icons.map_rounded,"color":Colors.lightBlueAccent,"bg":Color.fromRGBO(
        224, 242, 255, 1.0),"route":"CheckHome"},
    {"text":"音视频检查","icon":Icons.video_camera_front_rounded,"color":Colors.amber,"bg":Color.fromRGBO(
        255, 239, 219, 1.0),"route":"CheckHome"},
    {"text":"查看数据","icon":Icons.list_alt_rounded,"color":Colors.lightGreen,"bg":Color.fromRGBO(
        231, 253, 216, 1.0),"route":"CheckHome"},
    {"text":"上传日志","icon":Icons.upload_file_rounded,"color":Colors.black26,"bg":Color.fromRGBO(
        222, 222, 222, 1.0),"route":"LogHome"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(16.0), // 设置外边距
          child: Column(
            children: [
              // 在该类中使用自定义组件
              MyHead("随手拍"),
              MySearch(),
              Expanded(   // 用来限制GridView的高度，否则column无限，GridView无限，导致无法显示
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, //最大行数
                        mainAxisSpacing: 16, //主轴（横向间距）
                        crossAxisSpacing: 16, // 纵向间距
                      ),
                      itemCount: buttonList.length,
                      itemBuilder: (context ,index){
                        return ElevatedButton(
                          onPressed: (){
                            print(buttonList[index]["route"]);
                            Navigator.of(
                                context,
                            ).pushNamed(buttonList[index]["route"]);
                          },
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  buttonList[index]['icon'],
                                  size: 100.0, // 设置图标大小
                                  color: buttonList[index]['color'], // 设置图标颜色
                                ),
                                SizedBox(height: 10.0), // 用于设置图标和文字之间的间距
                                Text(
                                  buttonList[index]['text'],
                                  style: TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: buttonList[index]['bg'],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0), // 设置圆角
                            ),
                          ),
                        );
                      }
                  )
              )
            ],
          )
      )
    );
  }
}