import 'package:flutter/material.dart';
import 'package:flutter_weixin/Contactpage.dart';
import 'package:flutter_weixin/Findpage.dart';
import 'package:flutter_weixin/Homepage.dart';
import 'package:flutter_weixin/Minedpage.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';
import 'dart:async';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.black,
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  /// 选中页面的索引
  int index = 0;

  ///底部标题集合
  var appBarTitles = ['微信', '通讯录', '发现', '我'];

  ///底部图片集合
  var bottomTabImages;

  ///界面集合
  var pageList;

  /// 聊天列表界面
  var wangWangPage;

  /// 通讯录界面
  var contactPage;

  /// 发现界面
  var findPage;

  /// 个人界面
  var minePage;
  var group = 'images/ww_main_popu_add_group.png';
  var friends = 'images/ww_main_popu_add_friends.png';
  var scan = 'images/ww_main_popu_add_scan.png';
  var feedback = 'images/ww_main_popu_add_fadeback.png';

  ///二维码扫描后的路径
  String barcode = "";

  @override
  Widget build(BuildContext context) {
    _initData();
    return new Scaffold(
        appBar: new AppBar(
            title: new Text(
              '微信',
              style: TextStyle(color: Colors.white),
            ),
            actions: <Widget>[
              new IconButton(
                icon: new Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              new Theme(
                  data: Theme.of(context).copyWith(
                    cardColor: const Color(0xff22292C),
                  ),
                  child: new PopupMenuButton(
                    offset: const Offset(0.0, 60.0),
                    icon: new Icon(Icons.add, color: Colors.white),
                    onSelected: (int value) {
                      startMenuButton(value,context);
                    },
                    itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
                          new PopupMenuItem<int>(
                              value: 0,
                              child: new Container(
                                  child: new Column(
                                children: <Widget>[
                                  new Row(
                                    children: <Widget>[
                                      new Image.asset(group,
                                          width: 30.0, height: 30.0),
                                      new Text(
                                        '发起群聊',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.0),
                                      )
                                    ],
                                  ),
                                ],
                              ))),
                          new PopupMenuItem<int>(
                              value: 1,
                              child: new Container(
                                  child: new Column(
                                children: <Widget>[
                                  new Row(
                                    children: <Widget>[
                                      new Image.asset(friends,
                                          width: 30.0, height: 30.0),
                                      new Text('添加朋友',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0))
                                    ],
                                  ),
                                ],
                              ))),
                          new PopupMenuItem<int>(
                              value: 2,
                              child: new Container(
                                  child: new Column(
                                children: <Widget>[
                                  new Row(
                                    children: <Widget>[
                                      new Image.asset(scan,
                                          width: 30.0, height: 30.0),
                                      new Text('扫一扫',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0))
                                    ],
                                  ),
                                ],
                              ))),
                          new PopupMenuItem<int>(
                              value: 3,
                              child: new Container(
                                  child: new Column(
                                children: <Widget>[
                                  new Row(
                                    children: <Widget>[
                                      new Image.asset(feedback,
                                          width: 30.0, height: 30.0),
                                      new Text('帮助与反馈',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0))
                                    ],
                                  ),
                                ],
                              ))),
                        ],
                  )),
            ]),
        body: new Container(
          child: _getBody(),
        ),
        bottomNavigationBar: _getBottomNavigationBar());
  }

  ///
  ///    根据image路径获取图片
  /// 这个图片的路径需要在 pubspec.yaml 中去定义
  ///
  Image _getTabImage(path) {
    return new Image.asset(path, width: 24.0, height: 21.0);
  }

  ///
  /// 获取中间界面
  ///
  _getBody() {
    switch (index) {
      case 0:
        if (wangWangPage == null) {
          return new WangWangPage();
        }
        return wangWangPage;
      case 1:
        if (contactPage == null) {
          return new ContactPage();
        }
        return contactPage;
      case 2:
        if (findPage == null) {
          return new FindPage();
        }
        return findPage;
      case 3:
        if (minePage == null) {
          return new MinePage();
        }
        return minePage;
      default:
        break;
    }
  }

  ///
  ///获取底部按钮
  ///
  _getBottomNavigationBar() {
    return new BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        new BottomNavigationBarItem(
            icon: _getTabIcon(0), title: getTabTitle(0)),
        new BottomNavigationBarItem(
            icon: _getTabIcon(1), title: getTabTitle(1)),
        new BottomNavigationBarItem(
            icon: _getTabIcon(2), title: getTabTitle(2)),
        new BottomNavigationBarItem(
            icon: _getTabIcon(3), title: getTabTitle(3)),
      ],
      currentIndex: index,
      type: BottomNavigationBarType.fixed,
      onTap: _switchPage,
    );
  }

  ///
  /// 根据索引获取所对应的标题
  ///
  getTabTitle(int page) {
    if (page == index) {
      return new Text(appBarTitles[page],
          style: new TextStyle(color: const Color(0xff46c01b), fontSize: 12.0));
    } else {
      return new Text(appBarTitles[page],
          style: new TextStyle(color: const Color(0xff999999), fontSize: 12.0));
    }
  }

  ///
  /// 根据索引获取所对应的icon
  ///
  _getTabIcon(int page) {
    if (page == index) {
      return bottomTabImages[page][1];
    } else {
      return bottomTabImages[page][0];
    }
  }

  ///
  /// 初始化一些数据
  ///
  ///
  void _initData() {
    /// 底部图片集合
    bottomTabImages = [
      [
        _getTabImage('images/ww_main_tab_ww_normal.png'),
        _getTabImage('images/ww_main_tab_ww_selected.png')
      ],
      [
        _getTabImage('images/ww_main_tab_contact_normal.png'),
        _getTabImage('images/ww_main_tab_contact_selected.png')
      ],
      [
        _getTabImage('images/ww_main_tab_find_normal.png'),
        _getTabImage('images/ww_main_tab_find_selected.png')
      ],
      [
        _getTabImage('images/ww_main_tab_me_normal.png'),
        _getTabImage('images/ww_main_tab_me_selected.png')
      ]
    ];
  }

  ///
  /// 切换界面
  ///
  _switchPage(int value) {
    setState(() {
      this.index = value;
    });
  }

  ///
  /// 菜单按钮点击的事件
  ///
  startMenuButton(int value, BuildContext context) {
    switch (value) {
      case 0:
        break;
      case 1:
        break;
      case 2:
        startScan();
        break;
      case 3:
        break;
    }
  }

  ///
  /// 跳转到扫描二维码界面
  ///
  Future startScan() async {
    try {
      String barcode = await BarcodeScanner.scan();
      print("二维码信息内容" + barcode);
      setState(() {
        this.barcode = barcode;
      });
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this.barcode = 'The user did not grant the camera permission!';
        });
      } else {
        setState(() => this.barcode = 'Unknown error: $e');
      }
    } on FormatException {
      setState(() => this.barcode =
          'null (User returned using the "back"-button before scanning anything. Result)');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }
}
