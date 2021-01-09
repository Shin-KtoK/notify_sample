import 'package:flutter/cupertino.dart';

class ChildBValueNotifier extends ValueNotifier<int> {
  ChildBValueNotifier() : super(0);
  /// 1増やす
  void increment() => value++;
  /// 0にリセットする
  void clear() => value=0;
  String get message => value.toString();
}