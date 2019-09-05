import 'package:flutter/material.dart';

//很多时候我们会依赖一些异步数据来动态更新UI，
//比如在打开一个页面时我们需要先从互联网上获取数据，
//在获取数据的过程中我们显式一个加载框，等获取到数据时我们再渲染页面；
//又比如我们想展示Stream（比如文件流、互联网数据接收流）的进度。
//当然，通过StatefulWidget我们完全可以实现上述这些功能。
//但由于在实际开发中依赖异步数据更新UI的这种场景非常常见，
//因此Flutter专门提供了FutureBuilder和StreamBuilder两个组件来快速实现这种功能。

class FutureBuilderRoute extends StatefulWidget {
  @override
  _FutureBuilderRouteState createState() => new _FutureBuilderRouteState();
}

class _FutureBuilderRouteState extends State<FutureBuilderRoute> {
  Future<String> mockNetworkData() async {
    return Future.delayed(Duration(seconds: 2),() => "我是从互联网上获取数据");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:FutureBuilder<String>(
        future: mockNetworkData(),
        builder: (BuildContext context,AsyncSnapshot snapshot){
          //请求已结束
          if(snapshot.connectionState == ConnectionState.done) {
            if(snapshot.hasError) {
               //请求失败，显示错误
               return Text("Error:${snapshot.error}");  
            } else {
              //请求成功，显示数据
              return Text("Contents:${snapshot.data}");
            }
          } else {
            //请求未结束，显示loading
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}