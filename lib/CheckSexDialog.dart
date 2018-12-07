import 'package:flutter/material.dart';
import 'package:flutter_weixin/BaseDialog.dart';

///
/// 这是一个自定义的选择性别的弹窗
///
class CheckSexDialog extends StatefulWidget {
  final ValueChanged<int> onChanged;
  int groupValue = 1;

  CheckSexDialog({Key key, @required this.onChanged, @required this.groupValue})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new _CheckSexDialogState(this.onChanged, this.groupValue);
  }
}

class _CheckSexDialogState extends State<CheckSexDialog> {
  int groupValue = 1;
  ValueChanged<int> onChanged;

  _CheckSexDialogState(this.onChanged, this.groupValue);

  @override
  Widget build(BuildContext context) {
    return new BaseDialog(
      child: new Container(
        width: 300.0,
        height: 120.0,
        color: Colors.white,
        child: new Column(
          children: <Widget>[
            new RadioListTile<int>(
              title: const Text('男'),
              value: 1,
              groupValue: groupValue,
              onChanged: (int e) => updateGroupValue(e),
            ),
            new RadioListTile<int>(
              title: const Text('女'),
              value: 2,
              groupValue: groupValue,
              onChanged: (int e) => updateGroupValue(e),
            ),
          ],
        ),
      ),
    );
  }

  ///更新group的值,Radio的value==groupValue时候,则按钮选中
  void updateGroupValue(int e) {
    setState(() {
      this.groupValue = e;
    });
    onChanged(e);
  }
}
