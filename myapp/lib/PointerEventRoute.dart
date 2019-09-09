import 'package:flutter/material.dart';

class PointerEventRoute extends StatefulWidget {
  @override
  _PointerEventRouteState createState() => new _PointerEventRouteState();
}

class _PointerEventRouteState extends State<PointerEventRoute> {
  PointerEvent _event;
  @override
  Widget build(BuildContext context) {
    return Center(
      child:new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
           Listener(
             child: Container(
               alignment: Alignment.center,
               color: Colors.blue,
               width: 400.0,
               height: 250.0,
               child: Text(_event?.toString()??"",style:TextStyle(
                 color:Colors.white,
                 fontSize: 16.0
                 )),
             ),
             onPointerDown: (PointerDownEvent event) => setState(() =>_event=event),
             onPointerMove: (PointerMoveEvent event) => setState( () => _event=event),
             onPointerUp:(PointerUpEvent event) => setState(() => _event=event)
           ),
        ],
      ),
    );
    
    

  }
}