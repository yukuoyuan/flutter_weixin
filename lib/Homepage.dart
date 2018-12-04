import 'package:flutter/material.dart';

class WangWangPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _WangWangPageState();
  }
}

class _WangWangPageState extends State<WangWangPage> {
  var defaultAvatar = 'images/ww_default_avatar.png';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(itemBuilder: (context, i) {
      return getItem();
    });
  }

  Widget getItem() {
    return new Container(
      child: new Column(
        children: <Widget>[
          new Container(
            height: 60.0,
            margin: new EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
            child: new Row(
              children: <Widget>[
                new Image.asset(defaultAvatar, width: 44.0, height: 44.0),
                new Expanded(
                    child: new Container(
                        height: 40.0,
                        alignment: Alignment.centerLeft,
                        margin: new EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              'Ai卓玛',
                              style: TextStyle(fontSize: 15.0),
                            ),
                            new Text(
                              '你在干嘛?',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: const Color(0xffaaaaaa)),
                            ),
                          ],
                        ))),
                new Padding(
                  padding: new EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
                  child: new Text(
                    '13:30',
                    style: TextStyle(
                      fontSize: 10.0,
                      color: const Color(0xffaaaaaa),
                    ),
                  ),
                )
              ],
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
            height: 0.5,
            color: const Color(0xffebebeb),
          ),
        ],
      ),
    );
  }
}
