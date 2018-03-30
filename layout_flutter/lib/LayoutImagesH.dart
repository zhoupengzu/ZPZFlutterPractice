import 'package:flutter/material.dart';

class LayoutImagesH {
  static layoutImagesH() {
    MaterialApp material = new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(
            "Images H Layout",
            style: new TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
        body: _getLayoutContainer(),
      ),
    );
    return material;
  }

  static _getLayoutContainer() {
    Row row = new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _getRowsImage('images/pic1.jpg'),
        _getRowsImage('images/pic2.jpg'),
        _getRowsImage('images/pic3.jpg')
      ],
    );
    Container container = new Container(
      padding: const EdgeInsets.all(15.0),
      color: Colors.grey,
      child: row,
    );
    return container;
  }

  static _getRowsImage(imageStr) {
    return new Image.asset(
      imageStr,
      width: 100.0,
    );
  }
}
