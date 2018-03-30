import 'package:flutter/material.dart';

class LayoutImagesV {
  static layoutImagesVSpaceEvenly() {
    return new Container(
      color: Colors.green,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Image.asset('images/pic1.jpg'),
          new Image.asset('images/pic2.jpg'),
          new Image.asset('images/pic3.jpg'),
        ],
      ),
    );
  }
  static layoutImagesVSpaceAround() {
    return new Container(
      color: Colors.green,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Image.asset('images/pic1.jpg'),
          new Image.asset('images/pic2.jpg'),
          new Image.asset('images/pic3.jpg'),
        ],
      ),
    );
  }
  static layoutImagesVSpaceBetween() {
    return new Container(
      color: Colors.green,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Image.asset('images/pic1.jpg'),
          new Image.asset('images/pic2.jpg'),
          new Image.asset('images/pic3.jpg'),
        ],
      ),
    );
  }
}