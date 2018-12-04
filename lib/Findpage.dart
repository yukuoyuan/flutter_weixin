import 'package:flutter/material.dart';

class FindPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _FindPageState();
  }
}

class _FindPageState extends State<FindPage> {
  var circleImg = 'images/ww_main_find_friend_circle.png';
  var scanImg = 'images/ww_main_find_scan.png';
  var shakeImg = 'images/ww_main_find_shake.png';
  var nearbyImg = 'images/ww_main_find_nearby.png';
  var bottleImg = 'images/ww_main_find_bottle.png';
  var mailImg = 'images/ww_main_find_mall.png';
  var gameImg = 'images/ww_main_find_game.png';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
        child: Column(
      children: <Widget>[
        new Container(
          height: 48.0,
          margin: new EdgeInsets.fromLTRB(12.0, 0.0, 0.0, 0.0),
          child: new Row(
            children: <Widget>[
              new Image.asset(circleImg, width: 24.0, height: 24.0),
              new Padding(
                padding: new EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                child: new Text(
                  '朋友圈',
                  style: new TextStyle(
                      color: const Color(0xff353535), fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
        new Container(
          height: 20.0,
          color: const Color(0xffebebeb),
        ),
        new Container(
          height: 48.0,
          margin: new EdgeInsets.fromLTRB(12.0, 0.0, 0.0, 0.0),
          child: new Row(
            children: <Widget>[
              new Image.asset(scanImg, width: 24.0, height: 24.0),
              new Padding(
                padding: new EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                child: new Text(
                  '扫一扫',
                  style: new TextStyle(
                      color: const Color(0xff353535), fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
        new Container(
          margin: new EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
          height: 1.0,
          color: const Color(0xffebebeb),
        ),
        new Container(
          height: 48.0,
          margin: new EdgeInsets.fromLTRB(12.0, 0.0, 0.0, 0.0),
          child: new Row(
            children: <Widget>[
              new Image.asset(shakeImg, width: 24.0, height: 24.0),
              new Padding(
                padding: new EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                child: new Text(
                  '摇一摇',
                  style: new TextStyle(
                      color: const Color(0xff353535), fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
        new Container(
          height: 20.0,
          color: const Color(0xffebebeb),
        ),
        new Container(
          height: 48.0,
          margin: new EdgeInsets.fromLTRB(12.0, 0.0, 0.0, 0.0),
          child: new Row(
            children: <Widget>[
              new Image.asset(nearbyImg, width: 24.0, height: 24.0),
              new Padding(
                padding: new EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                child: new Text(
                  '附近的人',
                  style: new TextStyle(
                      color: const Color(0xff353535), fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
        new Container(
          margin: new EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
          height: 1.0,
          color: const Color(0xffebebeb),
        ),
        new Container(
          height: 48.0,
          margin: new EdgeInsets.fromLTRB(12.0, 0.0, 0.0, 0.0),
          child: new Row(
            children: <Widget>[
              new Image.asset(bottleImg, width: 24.0, height: 24.0),
              new Padding(
                padding: new EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                child: new Text(
                  '漂流瓶',
                  style: new TextStyle(
                      color: const Color(0xff353535), fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
        new Container(
          height: 20.0,
          color: const Color(0xffebebeb),
        ),
        new Container(
          height: 48.0,
          margin: new EdgeInsets.fromLTRB(12.0, 0.0, 0.0, 0.0),
          child: new Row(
            children: <Widget>[
              new Image.asset(mailImg, width: 24.0, height: 24.0),
              new Padding(
                padding: new EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                child: new Text(
                  '购物',
                  style: new TextStyle(
                      color: const Color(0xff353535), fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
        new Container(
          margin: new EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
          height: 1.0,
          color: const Color(0xffebebeb),
        ),
        new Container(
          height: 48.0,
          margin: new EdgeInsets.fromLTRB(12.0, 0.0, 0.0, 0.0),
          child: new Row(
            children: <Widget>[
              new Image.asset(gameImg, width: 24.0, height: 24.0),
              new Padding(
                padding: new EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                child: new Text(
                  '游戏',
                  style: new TextStyle(
                      color: const Color(0xff353535), fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
        new Expanded(
          child: new Container(
            color: const Color(0xffebebeb),
          ),
        )
      ],
    ));
  }
}
