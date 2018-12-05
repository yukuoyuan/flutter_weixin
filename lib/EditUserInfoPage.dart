import 'package:flutter/material.dart';

class EditUserInfoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _EditUserInfoPageState();
  }
}

class _EditUserInfoPageState extends State<EditUserInfoPage> {
  var inputText;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text(
            '修改个人信息',
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            new Padding(
              padding: new EdgeInsets.fromLTRB(0.0, 15.0, 15.0, 0.0),
              child: new GestureDetector(
                onTap: _saveUserInfo,
                child: new Text(
                  '保存',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
            )
          ]),
      body: new Container(
        child: new TextField(
          decoration: new InputDecoration(
            hintText: '请输入内容',
          ),
          onChanged: _onInputTextChange,
        ),
      ),
    );
  }
  ///
  /// 保存按钮点击的回调
  ///
  _saveUserInfo() {
    Navigator.pop(context, '$inputText');
  }

  ///
  /// 输入内容改变之后
  ///
  _onInputTextChange(String value) {
    setState(() {
      inputText = value;
    });
  }
}
