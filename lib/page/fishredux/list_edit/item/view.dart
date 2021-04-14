import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

// Widget buildView(EditItemState state, Dispatch dispatch, ViewService viewService) {
//   return Container();
// }
Widget buildView(EditItemState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    child: InkWell(
      // onTap: () {},
      child: ListTile(
        title: Text(state.title),
        trailing: Checkbox(
          value: state.itemStatus,
          ///Checkbox的点击操作：状态变更
          onChanged: (value) {
            dispatch(EditItemActionCreator.onClear(state.id));
            dispatch(EditItemActionCreator.onChange(state.id));
          }
        ),
      ),
    ),
  );
}