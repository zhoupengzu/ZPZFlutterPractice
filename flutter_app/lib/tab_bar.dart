import 'package:flutter/material.dart';

class TabBarPractice {
  static tabBar() {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: new AppBar(
            elevation: 0.0,
            title: new Text(
              'TabBar',
              style: new TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.blue,
            bottom: new TabBar(
              tabs: <Widget>[
                new Tab(
                  // icon和child不能同时使用，同时使用，会相互覆盖，只保留一个；text和child也不能同时使用，同时使用会产生错误
                  // child: new Icon(Icons.directions_car),
                  icon: new Icon(Icons.share),
                  // icon: new Text('text'),
                  text: 'text',
                ),
                new Icon(Icons.directions_transit),
                new Icon(Icons.directions_bike),
              ],
            ),
          ),
          body: new TabBarView(
            // 下面的每一个Widget单独占用一个页面
            children: <Widget>[
              new Container(
                color: Colors.red,
              ),
              new Icon(Icons.directions_transit),
              new Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
