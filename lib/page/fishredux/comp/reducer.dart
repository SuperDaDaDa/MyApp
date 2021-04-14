import 'dart:math';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;

import 'action.dart';
import 'state.dart';

Reducer<CompCaseState> buildReducer() {
  return asReducer(
    <Object, Reducer<CompCaseState>>{
      CompCaseAction.change: _onChange,
    },
  );
}

CompCaseState _onChange(CompCaseState state, Action action) {
  final CompCaseState newState = state.clone();
  //改变leftAreaComponent 中的state
  newState.leftAreaState.text = "LeftAreaState：${Random().nextInt(1000)}";
  newState.leftAreaState.color = Color.fromRGBO(randomColor(), randomColor(), randomColor(), 1);

  //改变rightAreaComponent中state
  newState.rightAreaState.text = "RightAreaState：${Random().nextInt(1000)}";
  newState.rightAreaState.color =
      Color.fromRGBO(randomColor(), randomColor(), randomColor(), 1);


  return newState;
}

int randomColor() {
  return Random().nextInt(255);
}