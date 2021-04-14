import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(GuideState state, Dispatch dispatch, ViewService viewService) {
  return _bodyWidget(state, dispatch);
}

Widget _bodyWidget(GuideState state, Dispatch dispatch) {
  return Scaffold(
      appBar: AppBar(
        title: Text("示例"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlatButton(
              onPressed: () {
                dispatch(GuideActionCreator.jumpToJump());
              },
              child: Text("页面跳转"),
            ),
            FlatButton(
              onPressed: () {
                dispatch(GuideActionCreator.jumpToList());
              },
              child: Text("列表页"),
            ),
            FlatButton(
              onPressed: () {

                dispatch(GuideActionCreator.jumpToListEdit());
              },
              child: Text("列表页编辑"),
            ),
            FlatButton(
              onPressed: () {
                dispatch(GuideActionCreator.jumpToMultiList());
              },
              child: Text("多样式列表"),
            ),
            FlatButton(
              onPressed: () {
                dispatch(GuideActionCreator.jumpToCounter());
              },
              child: Text("计数器"),
            ),
            FlatButton(
              onPressed: () {
                dispatch(GuideActionCreator.jumpToComponent());
              },
              child: Text("组件用法"),
            ),
          ],
        ),
      ));
}
