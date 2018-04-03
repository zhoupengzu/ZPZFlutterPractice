import 'package:flutter/material.dart';

class GridPractice {
  static gridPractice() {
    return new _MyHomePage();
  }
}

class _MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _MyHomePageState();
  }
}

class _MyHomePageState extends State<_MyHomePage>  {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      alignment: const Alignment(0.6, 0.6),
      children: [
        new CircleAvatar(
          backgroundImage: new AssetImage('images/expand1.jpg'),
          radius: 100.0,
        ),
        new Container(
          decoration: new BoxDecoration(
            color: Colors.black45,
          ),
          child: new Text(
            'Mia B',
            style: new TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );

    // TODO: implement build
    Scaffold scaffold = new Scaffold(
      appBar: new AppBar(
        title: new Text("Grid", style: new TextStyle(color: Colors.white, fontSize: 20.0)),
        backgroundColor: Colors.green,
      ),
      body: new SafeArea(child: new Center(child: stack)),
    );
    MaterialApp materialApp = new MaterialApp(
      home: scaffold,
    );
    return materialApp;
  }
  static _getListWidget() {
    return new List<Container>.generate(30,
    (index) => new Container(child: new Image.network("http://118.24.45.166/pic${index}.jpg"),)
    );
  }
}