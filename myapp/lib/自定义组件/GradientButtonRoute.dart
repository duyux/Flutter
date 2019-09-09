import 'package:flutter/material.dart';
import 'GradientButton.dart';

class GradientButtonRoute extends StatefulWidget {
  @override
  _GradientButtonRouteState createState() => _GradientButtonRouteState();
}

class _GradientButtonRouteState extends State<GradientButtonRoute> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GradientButton(
          colors:[Colors.orange,Colors.red],
          height:50.0,
          child:Text("Submit"),
          onPressed:onTap,
        ),
        GradientButton(
          height: 50.0,
          colors:[Colors.lightGreen,Colors.green[700]],
          child: Text("Submit"),
          onPressed: onTap(),
        ),
        GradientButton(
            height: 50.0,
            colors: [Colors.lightBlue[300], Colors.blueAccent],
            child: Text("Submit"),
            onPressed: onTap,
          ),
      ],
    );
  }

  onTap() {
    print("button click");
  }
}