import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum EditItemAction { onChange }

class EditItemActionCreator {
  //状态改变
  static Action onChange(int id) {
    return Action(EditItemAction.onChange, payload: id);
  }
}
