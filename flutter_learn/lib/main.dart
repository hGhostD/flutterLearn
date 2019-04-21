import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "页面跳转返回数据",
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("要电话"),),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: (){
        _naviagateToXiaoJieJie(context);
      },
      child: Text('去找小姐姐'),
    );
  }

  _naviagateToXiaoJieJie(BuildContext context) async{
    final result = await Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>XiaoJieJie())
    );

    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
  }
}

class XiaoJieJie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('我是小姐姐'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('大长腿小姐姐'),
              onPressed: (){
                Navigator.pop(context, '大长腿小姐姐：编号1');
              },
            ),
            RaisedButton(
              child: Text('小蛮腰小姐姐'),
              onPressed: (){
                Navigator.pop(context, '小蛮腰小姐姐：编号2');
              },
            ),
          ],
      ),)
    );
  }
}
