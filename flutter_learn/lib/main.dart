import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage('https://avatars3.githubusercontent.com/u/13240543?s=460&v=4'),
          radius: 100,
        ),
        new Container(
          decoration: new BoxDecoration(
            color: Colors.lightBlueAccent
          ),
          padding: EdgeInsets.all(5),
          child: Text('Stack 组件'),
        )
      ],
    );
    return MaterialApp(
      title: "Row Widget",
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('垂直方向布局'),
        ),
        body: Center(child: stack,),
      ),
    );
  }
}
