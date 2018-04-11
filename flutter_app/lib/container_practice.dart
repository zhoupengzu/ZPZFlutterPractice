import 'package:flutter/material.dart';

class ContainerWidget {
  static showContainer() {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(
            "Container",
            style: new TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.green,
        ),
        body: ContainerWidget._decoration(),
      ),
    );
  }

  // 下面的Container会尽可能的大
  static _baseContainer() {
    return new Container(
      color: Colors.blue,
//      child: new Container(
//        color: Colors.red,
//      ),
    );
  }

  static _addWidgetToContainer() {
    return new Container(
      color: Colors.red,
      child: new Text("Container"),
//      margin: const EdgeInsets.all(20.0),
    );
  }

  static _limitWidth() {
    return new Container(
      color: Colors.red,
      child: new Text("Container"),
      width: 10.0,
//      width: 200.0,
//      height: 10.0,
      height: 50.0,
    );
  }

  static _limitWidthWithPadding() {
    return new Container(
      color: Colors.red,
      padding: const EdgeInsets.all(20.0),
      height: 20.0,
      width: 20.0,
      child: new Text("Container"),
    );
  }

  static _boxContraints() {
    return new Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Container(
          // 相当于直接制定了该Container的宽和高，且它的优先级要高于width和height
          constraints: new BoxConstraints.expand(width: 250.0, height: 150.0),
          color: Colors.red,
          width: 100.0,
          height: 100.0,
// 设置Container的最大和最小宽度和高度
//          constraints: new BoxConstraints(
//            maxWidth: 50.0,
//          ),
        ),
        new Container(
          color: Colors.green,
          width: 100.0,
          height: 100.0,
        )
      ],
    );
  }
  static _foregroundDecoration() {
    return new Center(
      child: new Container(
        color: Colors.red,
        constraints: new BoxConstraints.expand(width: 300.0, height: 300.0,),
        foregroundDecoration: new BoxDecoration(
          color: Colors.blue,
          border: new Border.all(color: Colors.yellow, width: 5.0,),
          borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
          gradient: new LinearGradient(colors: [Colors.red, Colors.cyan]),
        ),
        alignment: Alignment.center,
        child: new Text("Container"),
      ),
    );
  }
  static _decoration() {
    return new Center(
      child: new Container(
//        color: Colors.red,  // 不能和decoration共存
        constraints: new BoxConstraints.expand(width: 300.0, height: 300.0,),
        alignment: Alignment.center,
        child: new Text("Container"),
        decoration: new BoxDecoration(
          color: Colors.blue,
          border: new Border.all(color: Colors.yellow, width: 5.0,),
          borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
          gradient: new LinearGradient(colors: [Colors.blue, Colors.green]),
        ),
      ),
    );
  }
}
