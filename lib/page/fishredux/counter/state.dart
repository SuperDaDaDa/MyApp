import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_my_app/page/fishredux/store/state.dart';
//存数据的地方
class CountState implements Cloneable<CountState>,GlobalBaseState {
  int count;

  @override
  CountState clone() {
    return CountState()..count = count
    ..store = store;
  }

  @override
  StoreModel store;

}

CountState initState(Map<String, dynamic> args) {
  return CountState()..count = 0;
}
