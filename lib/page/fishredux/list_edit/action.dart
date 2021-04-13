import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ListEditAction { action }

class ListEditActionCreator {
  static Action onAction() {
    return const Action(ListEditAction.action);
  }
}
