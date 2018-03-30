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
    GridView gridView = new GridView.extent(
        maxCrossAxisExtent: 150.0,
      padding: const EdgeInsets.all(4.0),
      mainAxisSpacing: 5.0,
      crossAxisSpacing: 10.0,
      children: _getListWidget(),
    );

    // TODO: implement build
    Scaffold scaffold = new Scaffold(
      appBar: new AppBar(
        title: new Text("Grid", style: new TextStyle(color: Colors.white, fontSize: 20.0)),
        backgroundColor: Colors.green,
      ),
      body: new SafeArea(child: gridView),
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