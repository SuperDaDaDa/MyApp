import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum EditItemAction { onChange ,onClear}

class EditItemActionCreator {
  //状态改变
  static Action onChange(int id) {
    return Action(EditItemAction.onChange, payload: id);
  }

  //清除所有选择
  static Action onClear(int id) {
    return Action(EditItemAction.onClear, payload: id);
  }
}
