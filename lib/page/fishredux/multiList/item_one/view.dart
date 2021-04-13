import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'item_state.dart';

Widget buildView(ItemOneState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    width: double.infinity,
    height: 50,
    color: Colors.red,
  );
}
