import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {

  final _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
    );
  }
}