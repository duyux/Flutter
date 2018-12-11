import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MinePage extends StatefulWidget {
  @override
  MinePageState createState() =>new MinePageState();
}

class MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
     return new Center(child: new Text('我'),);
  }

}