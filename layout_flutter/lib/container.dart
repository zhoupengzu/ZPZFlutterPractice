import 'package:flutter/material.dart';

class ContainerPractice {
  static containerPractice() {
    return new MaterialApp(
      home: new _MyHomeWidget(),
    );
  }
}

class _MyHomeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _MyHomeState();
}

class _MyHomeState extends State<_MyHomeWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
          backgroundColor: Colors.green,
          title: new Text(
            "Container",
            style: new TextStyle(color: Colors.white, fontSize: 20.0),
          )),
      body: _getCenter(),
    );
  }

  static _getCenter() {
    return new Center(
        child: new Container(
      decoration: new BoxDecoration(
        color: Colors.black26,
      ),
      child: new Column(
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//          crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Expanded(
              child: new Row(
            children: <Widget>[
              new Expanded(
                  child: new Container(
                decoration: new BoxDecoration(
                    border: new Border.all(color: Colors.black38, width: 10.0),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(8.0))),
                margin: const EdgeInsets.all(4.0),
                child: new Image.asset("images/container1.jpg"),
              )),
              new Expanded(
                  child: new Container(
                decoration: new BoxDecoration(
                    border: new Border.all(color: Colors.black38, width: 10.0),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(8.0))),
                margin: const EdgeInsets.all(4.0),
                child: new Image.asset("images/container2.jpg"),
              ))
            ],
          )),
          new Expanded(
              child: new Row(
            children: <Widget>[
              new Expanded(
                  child: new Container(
                decoration: new BoxDecoration(
                    border: new Border.all(color: Colors.black38, width: 10.0),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(8.0))),
                margin: const EdgeInsets.all(4.0),
                child: new Image.asset("images/container3.jpg"),
              )),
              new Expanded(
                  child: new Container(
                decoration: new BoxDecoration(
                    border: new Border.all(color: Colors.black38, width: 10.0),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(8.0))),
                margin: const EdgeInsets.all(4.0),
                child: new Image.asset("images/container4.jpg"),
              ))
            ],
          ))
        ],
      ),
    ));
  }
}
