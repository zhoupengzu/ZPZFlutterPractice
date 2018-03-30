import 'package:flutter/material.dart';

class PackingWidget {
  static normalStars() {
    return new MaterialApp(
      home: new _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text("Packing Widget")),
      body: new Center(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
//          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(Icons.star, color: Colors.green[500]),
            new Icon(Icons.star, color: Colors.green[500]),
            new Icon(Icons.star, color: Colors.green[500]),
            new Icon(Icons.star, color: Colors.grey),
            new Icon(Icons.star, color: Colors.grey),
          ],
        ),
      )
    );
  }
}