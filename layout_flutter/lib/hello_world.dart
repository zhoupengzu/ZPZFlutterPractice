import 'package:flutter/material.dart';

class HelloWorld {
  static Widget helloWorld() {
    return new MaterialApp(
      title: 'Hello World',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: new AppBar(title: new Text('Hello World')),
        body: new Center(
            child: new Text(
          "Hello World",
          style: new TextStyle(fontSize: 32.0),
        )),
      ),
    );
  }

  static Widget hellWorldWithoutMaterial() {
    return new Container(
      decoration: new BoxDecoration(color: Colors.white),
      child: new Center(
        child: new Text(
          'Hello World',
          textDirection: TextDirection.ltr, // 这一句必须有
          style: new TextStyle(color: Colors.black, fontSize: 40.0),
        ),
      ),
    );
  }
}
