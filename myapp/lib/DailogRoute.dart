import 'package:flutter/material.dart';

class DailogRoute extends StatefulWidget {
  @override
  _DailogRouteState createState() => new _DailogRouteState();
}

class _DailogRouteState extends State<DailogRoute> {
 void _OpenDailog1(){
     showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
                return new AlertDialog(
                    title:Text('提示'),
                    content: Text("您确定要删除当前文件吗？"),
                    actions: <Widget>[
                      FlatButton(
                        child: Text("取消"),
                        onPressed: () => Navigator.of(context).pop(),//关闭对话框
                      ),
                      FlatButton(
                        child: Text("删除"),
                        onPressed: () {
                          //执行删除操作
                          Navigator.of(context).pop(true);//关闭对话框
                        },
                      ),
                    ],
                  );
            },
     );
 }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
           RaisedButton(
             child: Text("对话框1"),
             onPressed: _OpenDailog1,
           ),
        ],
      ),
    );
    
    

  }
}