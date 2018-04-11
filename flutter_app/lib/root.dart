import 'package:flutter/material.dart';

class Root {
  static root({Widget body, String title}) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(
            title,
            style:
                new TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: body,
      ),
    );
  }
}
