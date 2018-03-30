import 'package:flutter/material.dart';

class ExpandedImages {
  static expandedImages() {
    return new Container(
      color: Colors.green,
//      margin: const EdgeInsets.all(15.0),
      child: new Row(
        textDirection: TextDirection.ltr,
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _getRowChildren(),
      ),
    );
  }
  static expandImagesWithMaterial() {
      return new MaterialApp(
        home: new Scaffold(
          appBar: new AppBar(
              title: new Text('Expanded')
          ),
          body: new Center(
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: _getRowChildren(),
            ),
          )
        ),
      );
  }
  static _getRowChildren() {
    return [
//      new Expanded(child: new Image.asset("images/pic1.jpg")),
//      new Expanded(flex:2, child: new Image.asset("images/pic2.jpg")),
//      new Expanded(child: new Image.asset("images/pic3.jpg"))
      new Expanded(child: new Image.asset("images/expand1.jpg")),
      new Expanded(flex:2, child: new Image.asset("images/expand2.jpg")),
      new Expanded(child: new Image.asset("images/expand3.jpg"))
    ];
  }
}