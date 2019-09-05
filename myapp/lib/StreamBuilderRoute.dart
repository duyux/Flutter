import 'package:flutter/material.dart';

//我们知道，在Dart中Stream 也是用于接收异步事件数据，和Future 不同的是，
//它可以接收多个异步操作的结果，它常用于会多次读取数据的异步任务场景，
//如网络内容下载、文件读写等。
//StreamBuilder正是用于配合Stream来展示流上事件（数据）变化的UI组件

class StreamBuilderRoute extends StatefulWidget {
  @override
  _StreamBuilderRouteState createState() => new _StreamBuilderRouteState();
}

class _StreamBuilderRouteState extends State<StreamBuilderRoute> {
  //我们创建一个计时器的示例：每隔1秒，计数加1。这里，我们使用Stream来实现每隔一秒生成一个数字
  Stream<int> counter() {
    return Stream.periodic(Duration(seconds: 1),(i) {
      return i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:StreamBuilder<int>(
        stream: counter(),
        builder: (BuildContext context,AsyncSnapshot<int> snapshot){
         if(snapshot.hasError)
           return Text("Error:${snapshot.error}");
          switch (snapshot.connectionState){
              case ConnectionState.none:
                 return Text("没有Stream");
              case ConnectionState.waiting:
                 return Text("等待数据...");
              case ConnectionState.active:
                 return Text('active: ${snapshot.data}');
              case ConnectionState.done:
                 return Text('Stream已关闭');
          }

           return null; // unreachable
        },
      ),
    );
  }
}