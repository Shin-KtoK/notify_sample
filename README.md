# notifier_sample

以下の親子関係

- ParentWidget
  - ChildAWidget
  - ChildBWidget

## 通知処理

1. ParentWidgetからChildAWidget,ChildBWidgetのvalueの値を0にリセットする
2. ChildAWidgetからChildBWidgetへvalueを1増やす処理を通知する
3. ChildBWidgetからChildAWidgetへvalueを1増やす処理を通知する（2の逆）

<img src="https://user-images.githubusercontent.com/60842594/104107900-7e114380-5303-11eb-9a25-ea89db549c12.gif" width="300px">

