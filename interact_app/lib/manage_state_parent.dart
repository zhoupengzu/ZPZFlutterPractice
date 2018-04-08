import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'; // for @required

class ManageStateParent {
  static createParentMangeState() {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Manage By Parent'),
        ),
        body: new Center(
          child: new ParentWidget(),
        ),
      ),
    );
  }
}

class _TapBoxB extends StatelessWidget {
//  var active = false;
  final active;
  final ValueChanged<bool> onChanged;
  _TapBoxB({Key key, this.active: false, @required this.onChanged})
      : super(key: key);
  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: new Text(
            active ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
            color: active ? Colors.lightGreen[700] : Colors.grey[600]),
      ),
    );
  }
}

class ParentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _ParentWidgetState();
  }
}

class _ParentWidgetState extends State<ParentWidget> {
  var _active = false;
  _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new _TapBoxB(
        active: _active,
        onChanged: _handleTapboxChanged,
      ),
    );
  }
}
