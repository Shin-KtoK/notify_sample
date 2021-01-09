import 'package:flutter/material.dart';
import 'package:notify_sample/child_a_value_notifier.dart';
import 'package:notify_sample/child_b_value_notifier.dart';
import 'package:notify_sample/parent_widget.dart';
import 'package:provider/provider.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ChildAからChildBへ、ChildBからChildAへ値を渡すProviderを定義
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ChildAValueNotifier()),
          ChangeNotifierProvider(create: (context) => ChildBValueNotifier()),
        ],
        child: ParentWidget(),
      ),
    );
  }

}