import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<MultiListState> buildEffect() {
  return combineEffects(<Object, Effect<MultiListState>>{
    MultiListAction.action: _onAction,
  });
}

void _onAction(Action action, Context<MultiListState> ctx) {
}
