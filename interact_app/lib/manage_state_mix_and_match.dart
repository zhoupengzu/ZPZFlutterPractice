import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ManageStateMixMatch {
  static createMixMatchState() {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: new Text(
            "Manage State mix-and-match",
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
  var num = 0;
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
    print("Parent State:${widget.num}");
    widget.num += 1;
    // TODO: implement build
    return new Container(
      child: new TapboxC(onChanged: _handleTapboxChanged, active: widget.active),
        );
  }
}

typedef void changedValue(bool newValue);

class TapboxC extends StatefulWidget {
  var num = 0;
  final bool _active;
  bool _highlight = false;
  changedValue changed;
//  final ValueChanged<bool> onChanged;
  TapboxC({Key key, bool active, @required changedValue onChanged})
      :this._active = active, this.changed = onChanged, super(key: key) { }
  @override
  State<StatefulWidget> createState() {
    print("TapBoxC createState");
    return new _TapboxCState();
  }
}

class _TapboxCState extends State<TapboxC> {
  var num = 0;
  void _handleTap() {
    widget.changed(!widget._active);
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
    print("_TapboxCState build:${widget.num}, this num:$num");
    num += 1;
    widget.num += 1;
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
