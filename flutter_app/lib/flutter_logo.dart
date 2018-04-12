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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new FlutterLogo(
        size: 50.0,
        colors: new MaterialColor(0xFFFFFFFF, {0:new Color(0xFFFFFFFF)}),
      ),
    );
  }
}
