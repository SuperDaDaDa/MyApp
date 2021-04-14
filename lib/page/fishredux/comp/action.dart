import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum CompCaseAction { change }

class CompCaseActionCreator {
  static Action change() {
    return const Action(CompCaseAction.change);
  }
}
