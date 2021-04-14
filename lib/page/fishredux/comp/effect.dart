import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<CompCaseState> buildEffect() {
  return combineEffects(<Object, Effect<CompCaseState>>{
  // CompCaseAction.change: _change,
  });
}

void _change(Action action, Context<CompCaseState> ctx) {

}
