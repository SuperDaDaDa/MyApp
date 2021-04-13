import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<ListEditState> buildEffect() {
  return combineEffects(<Object, Effect<ListEditState>>{
    ListEditAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ListEditState> ctx) {
}
