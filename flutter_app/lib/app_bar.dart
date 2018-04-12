import 'package:flutter/material.dart';

class AppBarPractice {
  static appBar() {
    return new AppBarWidget();
  }
}

class AppBarWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new AppBarState();
}

class AppBarState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false, // 在调试期间，右上角的DEBUG字样
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(
            'AppBar',
            style: new TextStyle(
              // 设置字体样式
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ), // title
          // centerTitle: true, // 当设置了actions之后，title的位置会发生变化，使用该属性，可以让标题忽略actions占去的空间居中
          // titleSpacing: 0.0,
          elevation: 0.0, // 下部的影子，该值越大，影子越清楚，为0时，不会有影子，和RaisedButton是一样的
          backgroundColor: Colors.cyan, // 背景色
          leading: this.appBarLeading(),
          actions: this.appBarActions(),
          bottom: null,  // 这个先放一放
          // flexibleSpace: new FlexibleSpaceBar(   // 这个有什么用呢？？？？貌似是说只有在appbar的size改变的时候才会起作用
          //   title: new Text('Flexible'),
          //   // centerTitle: false,
          // ),
        ),
      ),
    );
  }

  appBarActions() {
    return <Widget>[
      new Container(
        width: 50.0,
        child: new Icon(
          Icons.star_border,
          color: Colors.red,
        ),
      ),
      new Container(
        width: 50.0,
        child: new Icon(Icons.share),
      ),
      new Container(
        color: Colors.orange,
        width: 50.0,
        margin: const EdgeInsets.only(
          left: 5.0,
          right: 5.0,
        ),
        alignment: Alignment.center,
        child: new Text('actions'),
      ),
    ];
  }

  // 经过实验发现，leading是限制了大小的
  appBarLeading() {
    return new RaisedButton(
      onPressed: this.clickedLeadingBtn,
      child: new Text(
        'Leading',
      ),
      textColor: Colors.white,
      color: Colors.red,
      elevation: 0.0,
      disabledElevation: 0.0,
      highlightElevation: 0.0,
      // highlightColor: Colors.cyan,
      colorBrightness: Brightness.light,
      splashColor: Colors.red,
      padding: const EdgeInsets.all(5.0),
    );
  }

  clickedLeadingBtn() {
    print('Clicked Leading');
  }
}
