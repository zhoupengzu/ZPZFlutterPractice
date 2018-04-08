import 'package:flutter/material.dart';
import 'favorite_widget.dart';
import 'manage_state_own.dart';
import 'manage_state_parent.dart';
import 'manage_state_mix_and_match.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    return new _MyHomeWidget();
//  return ManageStateOwn.createManageStateOwn();
//  return ManageStateParent.createParentMangeState();
  return ManageStateMixMatch.createMixMatchState();
  }
}

class _MyHomeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _MyHomeState();
  }
}

class _MyHomeState extends State<_MyHomeWidget> {
  @override
  Widget build(BuildContext context) {
    // 图片
    Image image = new Image.asset("images/lake.jpg");
    // 文字
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Expanded(
            child: new Column(
              children: <Widget>[
                new Container(
                  margin: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    "Oeschinen Lake Campground",
                    style: new TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                new Text(
                  "Kandersteg, Switzerland",
                  style: new TextStyle(color: Colors.grey[500]),
                )
              ],
            ),
          ),
          new FavoriteWidget()
//          new Icon(
//            Icons.star,
//            color: Colors.red,
//          ),
//          new Text("41")
        ],
      ),
    );
    Color color = Theme.of(context).primaryColor;
    // 按钮
    Widget buttonSection = new Container(
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              children: <Widget>[
                new Container(child: new Icon(Icons.call, color: color),margin: const EdgeInsets.only(bottom: 5.0)),
                new Text("CALL", style: new TextStyle(color: color))
              ],
            ),
          ),
          new Expanded(
            child: new Column(
              children: <Widget>[
                new Container(child: new Icon(Icons.near_me, color: color),margin: const EdgeInsets.only(bottom: 5.0)),
                new Text("ROUTE", style: new TextStyle(color: color))
              ],
            ),
          ),
          new Expanded(
            child: new Column(
              children: <Widget>[
                new Container(child: new Icon(Icons.share, color: color),margin: const EdgeInsets.only(bottom: 5.0)),
                new Text("SHARE", style: new TextStyle(color: color))
              ],
            ),
          )
        ],
      ),
    );
    Widget contentWiget = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.",
        style: new TextStyle(fontWeight: FontWeight.bold),
        softWrap: true,
      ),
    );
    // 基础，最底层视图
    MaterialApp materialApp = new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.cyan,
          title: new Text(
            "Interact",
            style: new TextStyle(color: Colors.white, fontSize: 32.0),
          ),
        ),
        body: new ListView(
          children: <Widget>[image, titleSection, buttonSection, contentWiget],
        ),
      ),
    );
    return materialApp;
  }
}