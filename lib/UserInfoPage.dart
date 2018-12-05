import 'package:flutter/material.dart';

class UserInfoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _UserInfoPageState();
  }
}

class _UserInfoPageState extends State<UserInfoPage> {
  var defaultAvatar = 'images/ww_default_avatar.png';
  var qrCodeImg = 'images/ww_main_me_qrcode.png';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(
            '个人信息',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: new Container(
          child: new Column(
            children: <Widget>[
              new Container(
                height: 20.0,
                color: const Color(0xffebebeb),
              ),
              new Container(
                margin: new EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                height: 80.0,
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Text(
                        '头像',
                        style: TextStyle(
                            fontSize: 16.0, color: const Color(0xff353535)),
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                      child: new Image.asset(defaultAvatar,
                          width: 64.0, height: 64.0),
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
                margin: new EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                height: 48.0,
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Text(
                        '昵称',
                        style: TextStyle(
                            fontSize: 16.0, color: const Color(0xff353535)),
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                      child: new Text(
                        'yuko',
                        style: TextStyle(
                            fontSize: 16.0, color: const Color(0xffAAAAAA)),
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
                margin: new EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                height: 48.0,
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Text(
                        '微信号',
                        style: TextStyle(
                            fontSize: 16.0, color: const Color(0xff353535)),
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                      child: new Text(
                        'yukuoyuan',
                        style: TextStyle(
                            fontSize: 16.0, color: const Color(0xffAAAAAA)),
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
                margin: new EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                height: 48.0,
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Text(
                        '头像',
                        style: TextStyle(
                            fontSize: 16.0, color: const Color(0xff353535)),
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                      child:
                          new Image.asset(qrCodeImg, width: 18.0, height: 18.0),
                    ),
                  ],
                ),
              ),
              new Container(
                height: 20.0,
                color: const Color(0xffebebeb),
              ),
              new Container(
                margin: new EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                height: 48.0,
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Text(
                        '性别',
                        style: TextStyle(
                            fontSize: 16.0, color: const Color(0xff353535)),
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                      child: new Text(
                        '男',
                        style: TextStyle(
                            fontSize: 16.0, color: const Color(0xffAAAAAA)),
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
                margin: new EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                height: 48.0,
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Text(
                        '地区',
                        style: TextStyle(
                            fontSize: 16.0, color: const Color(0xff353535)),
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                      child: new Text(
                        '北京海淀',
                        style: TextStyle(
                            fontSize: 16.0, color: const Color(0xffAAAAAA)),
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
                margin: new EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                child: new Row(
                  children: <Widget>[
                    new Text(
                      '个性签名',
                      style: TextStyle(
                          fontSize: 16.0, color: const Color(0xff353535)),
                    ),
                    new Expanded(
                      child: new Padding(
                        padding: new EdgeInsets.fromLTRB(0.0, 15.0, 20.0, 15.0),
                        child: new Text(
                          '男人要么拎枪保家卫国,要么办公室运筹帷幄',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 16.0, color: const Color(0xffAAAAAA)),
                        ),
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
          ),
        ));
  }
}
