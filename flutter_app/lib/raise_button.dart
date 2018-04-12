import "package:flutter/material.dart";

import 'root.dart';

class RaisedButtonPractice {
  static raisedButton() {
    return Root.root(
      title: "RaisedButton",
      body: new _RaisedButtonWidget(),
    );
  }
}

class _RaisedButtonWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _RaisedButtonState();
}

class _RaisedButtonState extends State<_RaisedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return raisedButtonWithChild();
  }

  clickedRaisedButton() {
    print('CLicked!');
  }

  hightLightChanged(bool changed) {
    if(changed) {
      print('Changed');
    } else {
      print('No Changed');
    }
  }

  baseRaisedButton() {
    return new Center(
      child: new RaisedButton(
        onPressed: this.clickedRaisedButton,
        color: Colors.green,
      ),
    );
  }

  raisedButtonWithChild() {
    return new Center(
      child: new RaisedButton(
        onPressed: this.clickedRaisedButton,
        color: Colors.green,
        // child: new Text('Raised Button', style: new TextStyle(color: Colors.black),),
        child: new Text(
          'Raised Button',
        ),
        textColor: Colors.white, // 该按钮上的文字颜色，但是前提是不设置字体自身的颜色时才会起作用
        // highlightColor: Colors.yellow,  // 高亮时的背景色
        disabledColor: Colors.deepOrange, // 失效时的背景色
        disabledTextColor: Colors.grey, // 按钮失效时的文字颜色，同样的不能使用文本自己的样式或者颜色时才会 起作用
        splashColor: Colors.purple, // 点击按钮时的渐变背景色，当你不设置高亮背景时才会看的更清楚
        colorBrightness: Brightness.dark, // 这个我也不知道
        elevation: 15.0, // 正常情况下浮动的距离
        highlightElevation: 5.0, // 高亮时的浮动距离（可以尝试将该值设置的比elevation小，看看体验）
        disabledElevation: 50.0,
        padding: const EdgeInsets.all(20.0),
        shape: new Border.all(
          // 设置边框样式
          color: Colors.blue,
          width: 4.0,
          style: BorderStyle.solid,
        ),
        animationDuration: new Duration(
          // 过程时间，最容易观察的是从elevation到highlightElevation，或者相反过程，但是前提是要彻底的按下去，注意其影子的变化
          seconds: 5,
        ),
        onHighlightChanged: this.hightLightChanged, // 可以用来监听按钮的按下和放开过程
        textTheme: ButtonTextTheme.accent,
      ),
    );
  }
}
