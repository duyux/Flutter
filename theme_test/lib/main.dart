import 'package:flutter/material.dart';
import 'package:testfullter20190307/ThemeTestRoute.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return Echo(text:'hello world');
    return MaterialApp(
      title: 'Flutter Theme',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ThemeTestRoute(),
    );
  }
}

