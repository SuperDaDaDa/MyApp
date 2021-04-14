import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_app/page/fishredux/comp/left_right_area/state.dart';

class CompCaseState implements Cloneable<CompCaseState> {
  AreaState leftAreaState;
  AreaState rightAreaState;

  @override
  CompCaseState clone() {
    return CompCaseState()
      ..rightAreaState = rightAreaState
      ..leftAreaState = leftAreaState;
  }
}

CompCaseState initState(Map<String, dynamic> args) {
  //初始化数据
  return CompCaseState()
    ..leftAreaState = AreaState(
      title: "LeftAreaComponent",
      text: "LeftAreaComponent",
      color: Colors.indigoAccent,
    )
    ..rightAreaState = AreaState(
      title: "RightAreaComponent",
      text: "RightAreaComponent",
      color: Colors.blue,
    );
}

///左边Component连接器
class LeftAreaConnector extends ConnOp<CompCaseState, AreaState>
    with ReselectMixin<CompCaseState, AreaState> {
  @override
  AreaState computed(CompCaseState state) {
    // TODO: implement computed
    return state.leftAreaState.clone();
  }

  @override
  void set(CompCaseState state, AreaState subState) {
    state.leftAreaState = subState;
  }
}

///右边Component连接器
class RightAreaConnector extends ConnOp<CompCaseState, AreaState>
    with ReselectMixin<CompCaseState, AreaState> {
  @override
  AreaState computed(CompCaseState state) {
    return state.rightAreaState.clone();
  }

  @override
  void set(CompCaseState state, AreaState subState) {
    state.rightAreaState = subState;
  }
}
