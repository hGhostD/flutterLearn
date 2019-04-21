import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage(
              'https://avatars3.githubusercontent.com/u/13240543?s=460&v=4'),
          radius: 100,
        ),
        new Positioned(
          top: 10.0,
          left: 10.0,
          child: new Text('Text.com'),
        ),
        new Positioned(bottom: 10, right: 10, child: new Text('Bottom'))
      ],
    );
    return MaterialApp(
      title: "Row Widget",
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('垂直方向布局'),
        ),
        body: Center(
          child: stack,
        ),
      ),
    );
  }
}
