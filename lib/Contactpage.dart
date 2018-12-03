import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ContactPageState();
  }
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(body: new Center(child: new Text('通讯录')));
  }
}
