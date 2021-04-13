import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MultiListAction { action }

class MultiListActionCreator {
  static Action onAction() {
    return const Action(MultiListAction.action);
  }
}
