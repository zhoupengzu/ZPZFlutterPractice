import 'package:flutter/material.dart';

class RowWidget {
  static rowWidget() {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: new Text("Row",
            style: new TextStyle(color: Colors.white),
          ),
        ),
        body: RowWidget._baseRow(),
      ),
    );
  }
  static _baseRow() {
    return new Container(
      color: Colors.red,
      height: 300.0,
      child: new Row(
        // 会超出去，展示错误
//          children: <Widget>[
//            new Container(width: 200.0, color: Colors.green,),
//            new Container(width: 200.0, color: Colors.blue,),
//            new Container(width: 200.0, color: Colors.cyan,),
//          ],
      children: <Widget>[
        // 使用了Expanded后，尺寸不再起作用
      new Container(width: 200.0, color: Colors.green,),
//        new Expanded(child: new Container(width: 50.0, color: Colors.green,)),
        new Expanded(child: new Container(width: 100.0, color: Colors.blue,)),
        new Expanded(child: new Container(width: 100.0, color: Colors.cyan,)),
      ],
      ),
    );
  }
}