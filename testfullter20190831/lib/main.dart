import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return Echo(text:'hello world');
    return MaterialApp(
      title: 'Flutter Demo2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    void _NavPaddingPage() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return PaddingTestRoute();
      }));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text("open new route"),
              textColor: Colors.blue,
              onPressed: _NavPaddingPage,
            ),
           Container(
             margin: EdgeInsets.only(top:50.0,left:120.0), //容器外填充
             constraints: BoxConstraints.tightFor(width:200.0,height:150.0), //卡片大小
             decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [Colors.red,Colors.orange],
                  center:Alignment.topLeft,
                  radius: .98
                ),
                boxShadow: [
                  BoxShadow(
                    color:Colors.black54,
                    offset:Offset(2.0,2.0),
                    blurRadius:4.0 
                  )
                ]
             ),
             transform: Matrix4.rotationZ(.2),
             alignment: Alignment.center,
             child:Text("5.20",style:TextStyle(color:Colors.white,fontSize:40.0))
           ),
          ],
        ),
      ),
    );
  }
}

class PaddingTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      //上下左右各添加16像素补白
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            //左边添加8像素补白
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("hello world"),
          ),
          Padding(
            //上下各添加8像素补白
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text("I am jack"),
          ),
          Padding(
            //分别指定四个方向补白
            padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 20.0),
            child: Text("Your friend"),
          ),
        ],
      ),
    );
  }
}
