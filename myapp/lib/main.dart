import 'package:flutter/material.dart';
//import 'HttpTestRoute.dart';
//import 'MyHomePage.dart';
//import 'ThemeTestRoute.dart';
//import 'UpdateTextPage.dart';
import 'MyFadeTest.dart';

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
     home:MyFadeTest(title: 'Fade Demo'),
    );
  }
}




