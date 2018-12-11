import 'package:flutter/material.dart';

//在Flutter中，可以通过动画库给widget添加动画
//与Android相似，在Flutter中，您有一个AnimationController和一个Interpolator， 它是Animation类的扩展，例如CurvedAnimation。您将控制器和动画传递到AnimationWidget中，并告诉控制器启动动画。
//让我们来看看如何编写一个FadeTransition，当您按下时会淡入一个logo

class MyFadeTest extends StatefulWidget {
  MyFadeTest({Key key,this.title}) : super(key:key);
  final String title;
  @override
  MyFadeTestState createState() =>new MyFadeTestState(); 
}

class MyFadeTestState extends State<MyFadeTest> with TickerProviderStateMixin {
  AnimationController controller;
  CurvedAnimation curve;

  @override
  void initState() {
    super.initState();
    controller=new AnimationController(duration: const Duration(milliseconds: 2000), vsync: this);
    curve = new CurvedAnimation(parent: controller, curve: Curves.easeIn);

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body:new Center(
        child: new Container(
          child: new FadeTransition(
            opacity: curve,
            child: new FlutterLogo(
              size:100.0
            ),
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        tooltip: 'Fase',
        child: new Icon(Icons.brush),
        onPressed: () {
          controller.forward();
        },
      ),
    );
  }
}