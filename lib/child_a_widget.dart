import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'child_a_value_notifier.dart';
import 'child_b_value_notifier.dart';

/// 子Widget A
class ChildAWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.blue,
      textColor: Colors.white,
      // 親Widgetまたは子WidgetBから通知を受けてChildAValueNotifierで値が変更されて通知される
      child: Text('child A ::: ${Provider.of<ChildAValueNotifier>(context).message}',),
      onPressed: () {
        // ChildBValueNotifierへ1増やす通知をする
        Provider.of<ChildBValueNotifier>(context, listen: false,).increment();
      },
    );
  }
}