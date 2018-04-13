import 'package:flutter/material.dart';

import 'root.dart';

class BottomNavigationBarPractice {
  static bottomNavigationBar() {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.blue,
          title: new Text(
            'BottomNavigationBar',
            style:
                new TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          elevation: 0.0,
        ),
        bottomNavigationBar: new _BottomNavigationBarWidget(),
      ),
    );
  }
}

class _BottomNavigationBarWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<_BottomNavigationBarWidget> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return baseUseBottomNavigationBar();
  }

  baseUseBottomNavigationBar() {
    return new BottomNavigationBar(
      items: [
        // items必须是大于等于2，否则会报错，但是为什么只能是2个呢？
        this.createBaseNavigationItems(
          color: Colors.red,
          title: 'Red',
          icon: new Icon(Icons.star),
        ),
        this.createBaseNavigationItems(
          color: Colors.green,
          title: 'Green',
          icon: new Icon(Icons.router),
        ),
        this.createBaseNavigationItems(
          color: Colors.cyan,
          title: 'Cyan',
          icon: new Icon(Icons.favorite),
        ),
        
      ],
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      // type: BottomNavigationBarType.shifting,  // 这种效果比较奇特，未选中的tab的title会被隐藏起来,整个Bar的背景色都会变成选中的tab的背景色
      fixedColor: Colors.lightGreen,   // 选中的tab上的内容的填充颜色
      currentIndex: _currentIndex,  // 当前选中的
      iconSize: 20.0,
    );
  }

  onTap(int index) {
    setState(() {
          _currentIndex = index;
        });
  }

  createBaseNavigationItems({Color color, String title, Icon icon}) {
    return new BottomNavigationBarItem(
      backgroundColor: color,
      title: new Text(title),
      // title: new Icon(Icons.share),
      icon: icon,
    );
  }
}
