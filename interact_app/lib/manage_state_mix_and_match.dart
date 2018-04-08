import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ManageStateMixMatch {
  static createMixMatchState() {
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
          child: new _ParentWidget(),
        ),
      ),
    );
  }
}

class _ParentWidget extends StatefulWidget {
  bool active = false;
  @override
  State<StatefulWidget> createState() => new _ParentWidgetState();
}

class _ParentWidgetState extends State<_ParentWidget> {

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      widget.active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new TapboxC(onChanged: _handleTapboxChanged, active: widget.active),
        );
  }
}

class TapboxC extends StatefulWidget {
  final bool _active;
  bool _highlight = false;
  final ValueChanged<bool> onChanged;
  TapboxC({Key key, bool active, @required this.onChanged})
      :this._active = active, super(key: key) { }
  @override
  State<StatefulWidget> createState() => new _TapboxCState();
}

class _TapboxCState extends State<TapboxC> {

  void _handleTap() {
    widget.onChanged(!widget._active);
  }

  void _handleTapDown(TapDownDetails details) {
    setState((){
      widget._highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState((){
      widget._highlight = false;
    });
  }

  void _handleTapCancel(){
    setState((){
      widget._highlight = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: _handleTap,
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
      child: new Container(
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
          color: widget._active ? Colors.lightGreen[700] : Colors.grey[600],
          border: widget._highlight
              ? new Border.all(color: Colors.teal[700], width: 10.0)
              : null,
        ),
      ),
    );
  }
}
