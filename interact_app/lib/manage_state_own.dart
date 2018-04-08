import 'package:flutter/material.dart';

class ManageStateOwn {
  static createManageStateOwn() {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: new Text(
            "Manage State Own",
            style:
                new TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: new Center(
          child: new _TapboxA(),
        ),
      ),
    );
  }
}

class _TapboxA extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _TapboxAState();
}

class _TapboxAState extends State<_TapboxA> {
  var _active = false;
  _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        width: 200.0,
        height: 200.0,
        color: _active ? Colors.lightGreen[700] : Colors.grey[600],
//        decoration: new BoxDecoration(
//          color: _active ? Colors.lightGreen[700] : Colors.grey[600]
//        ),
        child: new Center(
          child: new Text(
            _active ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
