import 'package:flutter/material.dart';
import 'package:demo01/home/headset_screen.dart';
import 'package:demo01/home/airplay_screen.dart';
import 'package:demo01/home/email_screen.dart';
import 'package:demo01/home/home_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {

  final _color = Colors.blue;
  int _currenIndex = 0;
  List<Widget> list = List();

  @override
  void initState() { 
    list
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(HeadSetScreen())
      ..add(AirPlayScreen());
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currenIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _color,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: _color),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: _color,
            ),
            title: Text(
              'Email',
              style: TextStyle(color: _color),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.headset,
              color: _color,
            ),
            title: Text(
              'Headset',
              style: TextStyle(color: _color),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.airplay,
              color: _color,
            ),
            title: Text(
              'Airplay',
              style: TextStyle(color: _color),
            )
          ),
        ],
        currentIndex: _currenIndex,
        onTap: (int index){
          setState(() { 
            _currenIndex = index; 
          });
        },
      ),
    );
  }
}