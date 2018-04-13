import 'package:flutter/material.dart';

class DrawerPractice {
  static drawer() {
    return DrawerPractice._basicUseDrawer();
  }
  static _basicUseDrawer() {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(
            'Drawer',
            style:
                new TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue,
        ),
        drawer: new Drawer(
          // elevation: 50.0,
          child: new Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
  static _basicUse() {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(
            'Drawer',
            style:
                new TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue,
        ),
        drawer: new Container(
          color: Colors.green,
        ),
        endDrawer: new Container(
          color: Colors.red,
        ),
      ),
    );
  }
}
