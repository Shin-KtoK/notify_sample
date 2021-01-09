import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'child_a_value_notifier.dart';
import 'child_b_value_notifier.dart';

/// 子Widget B
class ChildBWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.orange,
      textColor: Colors.white,
      // 親Widgetまたは子WidgetAから通知を受けてChildBValueNotifierで値が変更されて通知される
      child: Text('child B ::: ${Provider.of<ChildBValueNotifier>(context).message}',),
      onPressed: () {
        // ChildAValueNotifierへ1増やす通知をする
        Provider.of<ChildAValueNotifier>(context, listen: false,).increment();
      },
    );
  }
}