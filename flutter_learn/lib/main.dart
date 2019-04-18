import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Row Widget",
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('水平方向布局'),
        ),
        body: new Row(
          children: <Widget>[
            // 添加灵活的布局组件
            new RaisedButton(
              onPressed: () {},
              color: Colors.redAccent,
              child: new Text('Red Button'),
            ),
            Expanded(child: new RaisedButton(
              onPressed: () {},
              color: Colors.orangeAccent,
              child: new Text('Orange Button'),
            ),),
            new RaisedButton(
              onPressed: () {},
              color: Colors.blueAccent,
              child: new Text('Blue Button'),
            ),
          ],
        ),
      ),
    );
  }
}
