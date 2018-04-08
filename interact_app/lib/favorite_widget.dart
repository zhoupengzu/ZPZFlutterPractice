
import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State {
  var _isFavorited = true;  // 是否喜欢
  var _favoriteCount = 41;  // 喜欢个数
  _toggleFavorite() {
    setState((){
      if(_isFavorited) {
        _favoriteCount -= 1;
      } else {
        _favoriteCount += 1;
      }
      _isFavorited = !_isFavorited;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new Container(
          padding: const EdgeInsets.all(0.0),
          margin: const EdgeInsets.all(0.0),
          child: new IconButton(icon: (_isFavorited ? new Icon(Icons.star) : new Icon(Icons.star_border)), onPressed: _toggleFavorite, color: Colors.red),
        ),
        new SizedBox(
          width: 18.0,
          child: new Container(
            child: new Text("$_favoriteCount"),
          ),
        )
      ],
    );
  }
}