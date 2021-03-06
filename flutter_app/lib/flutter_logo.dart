import 'package:flutter/material.dart';

import 'root.dart';

class FlutterLogoPractice {
  static flutterLogo() {
    return Root.root(
      title: 'Flutter Logo',
      body: new _FlutterLogoWidget(),
    );
  }
}

class _FlutterLogoWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _FlutterLogoState();
}

class _FlutterLogoState extends State<_FlutterLogoWidget> {
  var _status = 0;
  clickedToChangeStatus() {
    setState(() {
      _status = (_status + 1) % 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    FlutterLogoStyle style = FlutterLogoStyle.markOnly;
    if (_status == 1) {
      style = FlutterLogoStyle.horizontal;
    } else if (_status == 2) {
      style = FlutterLogoStyle.stacked;
    }
    return new Center(
      child: new Column(
        children: <Widget>[
          new Container(
            width: 100.0,
            margin: const EdgeInsets.only(top: 30.0),
            child: new Placeholder(
              fallbackWidth: 100.0,
              fallbackHeight: 100.0,
              color: Colors.orange,
            ),
          ),
          new Container(
            margin: const EdgeInsets.only(
              top: 30.0,
              bottom: 30.0,
            ),
            child: new RaisedButton(
              onPressed: this.clickedToChangeStatus,
              color: Colors.green,
              child: new Text('Change Status'),
            ),
          ),
          new FlutterLogo(
            size: 50.0,
            colors: Colors.red, // 图的颜色
            textColor: Colors.orange, // 只对带文字的style起作用
            // style: FlutterLogoStyle.markOnly,  // 只有图
            style: style, // 左图右文
            // style: FlutterLogoStyle.stacked,  // 上图下文
            duration: new Duration(
              // 当colors、textColor或者style变化的时候起作用
              seconds: 3,
            ),
            curve: Curves.elasticOut, // 动画方式
          )
        ],
      ),
    );
  }
}
