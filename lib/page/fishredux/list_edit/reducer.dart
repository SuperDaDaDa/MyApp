import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ListEditState> buildReducer() {
  return asReducer(
    <Object, Reducer<ListEditState>>{
      ListEditAction.action: _onAction,
    },
  );
}

ListEditState _onAction(ListEditState state, Action action) {
  final ListEditState newState = state.clone();
  return newState;
}
