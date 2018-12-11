import 'package:flutter/material.dart';

class UpateTextPage extends StatefulWidget {
  UpateTextPage({Key key}) : super(key:key);

  @override
  UpateTextPageState createState() => new UpateTextPageState();
}

class UpateTextPageState extends State<UpateTextPage> {
   String textToShow='I like Flutter';

   void _updateText() {
     textToShow='Flutter is Awesome!';
   }

   @override
   Widget build(BuildContext context) {
     return new Scaffold(
       appBar: new AppBar(
         title: new Text('Sample App'),
       ),
       body:new Center(child: new Text(textToShow),),
       floatingActionButton: new FloatingActionButton(
         onPressed: _updateText,
         tooltip: 'UpateText',
         child: new Icon(Icons.update),
       ),
     );
   }
}