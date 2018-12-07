import 'package:flutter/material.dart';
import 'package:flutter_weixin/CheckSexDialog.dart';
import 'package:flutter_weixin/EditUserInfoPage.dart';

class UserInfoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _UserInfoPageState();
  }
}

class _UserInfoPageState extends State<UserInfoPage> {
  var defaultAvatar = 'images/ww_default_avatar.png';
  var qrCodeImg = 'images/ww_main_me_qrcode.png';
  var nikeName = 'Martian Yu';
  int groupValue = 1;

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
              new GestureDetector(
                onTap: _startEditUserInfoPage,
                child: new Container(
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
                          '$nikeName',
                          style: TextStyle(
                              fontSize: 16.0, color: const Color(0xffAAAAAA)),
                        ),
                      ),
                    ],
                  ),
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
              new GestureDetector(
                onTap: _showCheckSexDiaolog,
                child: new Container(
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
                          groupValue == 1 ? '男' : '女',
                          style: TextStyle(
                              fontSize: 16.0, color: const Color(0xffAAAAAA)),
                        ),
                      ),
                    ],
                  ),
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

  _startEditUserInfoPage() async {
    final result = await Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new EditUserInfoPage()),
    );
    setState(() {
      this.nikeName = result;
    });
  }

  ///
  /// 展示选择性别的弹窗
  ///
  _showCheckSexDiaolog() {
    showDialog<Null>(
        context: context, //BuildContext对象
        barrierDismissible: true,
        builder: (BuildContext context) {
          return new CheckSexDialog(
            groupValue: groupValue,
            onChanged: (int e) => updateGroupValue(e),
          );
        });
  }

  updateGroupValue(int e) {
    Navigator.pop(context);
    setState(() {
      this.groupValue = e;
    });
  }
}
