import 'package:flutter/material.dart';

import 'root.dart';

class TextWidget {
  static text() {
    return Root.root(title: "Text", body: TextWidget._richText());
  }

  static _baseText() {
    return new Center(
      child: new Text(
        "Hello, world!",
        style: new TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
          fontSize: 40.0,
          fontStyle: FontStyle.italic,
//          fontFamily: "PingFangSC-Medium",
        ),
      ),
    );
  }

  static _richText() {
    return new Center(
      child: new Text.rich(
        new TextSpan(
          style: new TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 40.0,
            fontStyle: FontStyle.italic,
//          fontFamily: "PingFangSC-Medium",
          ),
          text: "Hello,rich text!",
          children: [
            new TextSpan(
              style: new TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w400,
                fontSize: 30.0
              ),
              text: "TextSpan1",
//              recognizer:  // 先放一放
            ),
            new TextSpan(
              style: new TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0
              ),
              text: "TextSpan2",
//              recognizer:  // 先放一放
            )
          ],
        ),
      ),
    );
  }
}
