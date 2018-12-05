import 'package:flutter/material.dart';
import 'package:flutter_weixin/UserInfoPage.dart';

class MinePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MinePageState();
  }
}

class _MinePageState extends State<MinePage> {
  /// 默认的头像
  var defaultAvatar = 'images/ww_default_avatar.png';
  var qrCodeImg = 'images/ww_main_me_qrcode.png';
  var galleryImg = 'images/ww_main_me_gallary.png';
  var safeImg = 'images/ww_main_me_safe.png';
  var walletImg = 'images/ww_main_me_wallet.png';
  var cardImg = 'images/ww_main_me_card.png';
  var settingImg = 'images/ww_main_me_setting.png';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
        child: Column(
      children: <Widget>[
        new Container(
          height: 20.0,
          color: const Color(0xffebebeb),
        ),
        new GestureDetector(
          onTap: _startUserInfoPage,
          child: new Container(
              margin: new EdgeInsets.fromLTRB(15.0, 0.0, 32.0, 0.0),
              height: 80.0,
              child: new Row(
                children: <Widget>[
                  new Image.asset(defaultAvatar, width: 64.0, height: 64.0),
                  new Expanded(
                      child: new Container(
                    margin: new EdgeInsets.fromLTRB(16.0, 12.0, 0.0, 0.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          'yuko',
                          style: new TextStyle(
                              color: const Color(0xff353535), fontSize: 16.0),
                        ),
                        new Text('微信号:yukuoyuan',
                            style: new TextStyle(
                                color: const Color(0xffaaaaaa), fontSize: 14.0))
                      ],
                    ),
                  )),
                  new Image.asset(qrCodeImg, width: 18.0, height: 18.0),
                ],
              )),
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
              new Image.asset(galleryImg, width: 24.0, height: 24.0),
              new Padding(
                padding: new EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                child: new Text(
                  '相册',
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
              new Image.asset(safeImg, width: 24.0, height: 24.0),
              new Padding(
                padding: new EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                child: new Text(
                  '收藏',
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
              new Image.asset(walletImg, width: 24.0, height: 24.0),
              new Padding(
                padding: new EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                child: new Text(
                  '钱包',
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
              new Image.asset(cardImg, width: 24.0, height: 24.0),
              new Padding(
                padding: new EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                child: new Text(
                  '卡包',
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
              new Image.asset(settingImg, width: 24.0, height: 24.0),
              new Padding(
                padding: new EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                child: new Text(
                  '设置',
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

  ///
  /// 跳转到用户个人信息界面
  ///
  _startUserInfoPage() {
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new UserInfoPage()),
    );
  }
}
