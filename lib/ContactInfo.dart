import 'package:flutter_weixin/suspension_listview.dart';

class ContactInfo extends ISuspensionBean {
  String name;
  String namePinyin;

  ContactInfo({this.name,this.namePinyin});

  @override
  String getSuspensionTag() {
    // TODO: implement getSuspensionTag
    return namePinyin;
  }
}
