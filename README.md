# notifier_sample

以下の親子関係

- ParentWidget
  - ChildAWidget
  - ChildBWidget

## 通知処理

1. ParentWidgetからChildAWidget,ChildBWidgetのvalueの値を0にリセットする
2. ChildAWidgetからChildBWidgetへvalueを1増やす処理を通知する
3. ChildBWidgetからChildAWidgetへvalueを1増やす処理を通知する（2の逆）




