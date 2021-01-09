import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notify_sample/child_a_value_notifier.dart';
import 'package:notify_sample/child_a_widget.dart';
import 'package:notify_sample/child_b_widget.dart';
import 'package:provider/provider.dart';

import 'child_b_value_notifier.dart';

/// 親Widget
class ParentWidget extends StatelessWidget {
  const ParentWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ChildAWidget(),
            Text("↓ ↑"),
            ChildBWidget(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          // ChildAとChildBを0リセットする
          Provider.of<ChildAValueNotifier>(context, listen: false,).clear();
          Provider.of<ChildBValueNotifier>(context, listen: false,).clear();
        },
      ),
    );
  }
}