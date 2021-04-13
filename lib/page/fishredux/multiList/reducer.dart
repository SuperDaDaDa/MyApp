import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MultiListState> buildReducer() {
  return asReducer(
    <Object, Reducer<MultiListState>>{
      MultiListAction.action: _onAction,
    },
  );
}

MultiListState _onAction(MultiListState state, Action action) {
  final MultiListState newState = state.clone();
  return newState;
}
