

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_my_app/page/fishredux/store/state.dart';
import 'package:flutter_my_app/page/fishredux/store/reducer.dart';

class GlobalStore{
  static Store<GlobalState> _globalStore;
  static Store<GlobalState> get store => _globalStore ??= createStore<GlobalState>(GlobalState(), buildReducer());
}