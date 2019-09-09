import 'package:flutter/material.dart';
//import 'HttpTestRoute.dart';
//import 'MyHomePage.dart';
//import 'ThemeTestRoute.dart';
//import 'UpdateTextPage.dart';
//import 'MyFadeTest.dart';
//import 'FutureBuilderRoute.dart';
//import 'StreamBuilderRoute.dart';
//import 'DailogRoute.dart';
//import 'PointerEventRoute.dart';
//import 'Animate/ScaleAnimationRoute.dart';
//import 'Animate/HeroAnimationRoute.dart';
//import '自定义组件/GradientButtonRoute.dart';
import '自定义组件/CustomPaintRoute.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      //home: ThemeTestRoute(),
     // home:HttpTestRoute(),
     //home:UpateTextPage(),
     //home:MyFadeTest(title: 'Fade Demo'),
     //home:FutureBuilderRoute(),
     //home:StreamBuilderRoute(),
     //home:DailogRoute(),
     //home:PointerEventRoute(),
     //home:ScaleAnimationRoute(),
     //home:HeroAnimationRoute(),
    // home:GradientButtonRoute(),
    home:CustomPaintRoute(),
    );
  }
}




