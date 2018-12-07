import 'package:flutter/material.dart';

///
/// 这是一个自定义的弹窗控件
///
///
class BaseDialog extends Dialog {
  Widget child;

  BaseDialog({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Material(
        //创建透明层
        type: MaterialType.transparency, //透明类型
        child: new Center(child: child));
  }
}
