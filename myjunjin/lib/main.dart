import 'package:flutter/material.dart';
import 'pages/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        highlightColor: Colors.transparent,//将点击高亮色设为透明
        splashColor: Colors.transparent,//将喷溅颜色设为透明
        bottomAppBarColor: new Color.fromRGBO(244, 245, 245, 1.0),//设置底部导航的背景色
        scaffoldBackgroundColor: new Color.fromRGBO(244,245,245,1.0),//设置页面背景色
        primaryIconTheme: new IconThemeData(color:Colors.blue),//主要icon样式，如头部返回icon按钮
        indicatorColor: Colors.blue,//设置tab指示器颜色
        iconTheme: new IconThemeData(size:18.0),//设置icon样式
        primaryTextTheme: new TextTheme(title: new TextStyle(color:Colors.black,fontSize: 16.0)),//设置文本样式
      ),
       home: IndexPage(),
    );
  }
}


