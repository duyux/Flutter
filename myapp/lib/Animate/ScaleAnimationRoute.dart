import 'package:flutter/material.dart';

class ScaleAnimationRoute extends StatefulWidget {
  @override
  _ScaleAnimationRouteState createState() => new _ScaleAnimationRouteState();
}
//需要继承TickerProvider,如果有多个AnimationController,则应该使用TickerProviderStateMixin
class _ScaleAnimationRouteState extends State<ScaleAnimationRoute> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=new AnimationController(
      duration: const Duration(seconds: 3),vsync: this
    );
      //使用弹性曲线
    //animation=CurvedAnimation(parent: controller, curve: Curves.bounceIn);
    //图片宽高从0变成300
    animation=new Tween(begin: 0.0,end: 600.0).animate(controller);
    //启动动画(正向执行)
    controller.forward();
  }


  @override
  Widget build(BuildContext context) {
    return AnimatedImage(animation: animation,);
  }

  @override
  void dispose() {
    // 路由销毁时需要释放动画资源
    controller.dispose();
    super.dispose();
  }
}

class AnimatedImage extends AnimatedWidget {
  AnimatedImage({
    Key key,Animation<double> animation
  }):super(key:key,listenable:animation);

  
  Widget build(BuildContext context) {
    final Animation<double> animation=listenable;

    return new Center(
      child: Image.asset("images/avatar.png",
           width:animation.value,
           height: animation.value,
      ),
    ) ;
  }
}