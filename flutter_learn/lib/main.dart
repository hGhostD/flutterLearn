import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    var card = new Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('辽宁省沈阳市沈河区', style: TextStyle(fontWeight: FontWeight.w900),),
            subtitle: Text('subtitle'),
            leading: new Icon(Icons.account_box, color: Colors.lightBlueAccent,),
          ),
          new Divider(), // 添加一行分割线
          ListTile(
            title: Text('北京市海淀区', style: TextStyle(fontWeight: FontWeight.w900),),
            subtitle: Text('subtitle'),
            leading: new Icon(Icons.account_box, color: Colors.lightBlueAccent,),
          ),
          new Divider(),
          ListTile(
            title: Text('上海市闵行区', style: TextStyle(fontWeight: FontWeight.w900),),
            subtitle: Text('subtitle'),
            leading: new Icon(Icons.account_box, color: Colors.lightBlueAccent,),
          ),
          new Divider(),
        ],
      ),
    );
    return MaterialApp(
      title: "Row Widget",
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('垂直方向布局'),
        ),
        body: Center(
          child: card,
        ),
      ),
    );
  }
}
