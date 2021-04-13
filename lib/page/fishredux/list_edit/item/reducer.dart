import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<EditItemState> buildReducer() {
  return asReducer(
    <Object, Reducer<EditItemState>>{
      EditItemAction.onChange: _onChange,
    },
  );
}

EditItemState _onChange(EditItemState state, Action action) {
  if (state.id == action.payload) {
    return state.clone()..itemStatus = !state.itemStatus;
  }
  ///这地方一定要注意，要返回:state；不能返回:state.clone()，否则会造成后续更新失灵
  return state;
}
