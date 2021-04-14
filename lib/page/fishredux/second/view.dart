import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_app/page/fishredux/broadcast/action.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    SecondState state, Dispatch dispatch, ViewService viewService) {
  return WillPopScope(
    child: _bodyWidget(state, dispatch, viewService),
    onWillPop: () {
      dispatch(SecondActionCreator.backFirst());
      //
      ///true：表示执行页面返回    false:表示不执行返回页面操作，这里因为要传值，所以接管返回操作
      return Future.value(false);
    },
  );
}

Widget _bodyWidget(
    SecondState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text("SecondPage"),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        print("=======");
        viewService
            .broadcast(BroadcastActionCreator.toNotify("4444444444444444"));
      },
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('下方数据是FirstPage页面传递过来的:'),
          Text(state.msg),
        ],
      ),
    ),
  );
}
