import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_app/page/fishredux/comp/page.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    CompCaseState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    color: Colors.white,
    child: Column(
      children: [
        //组件部分
        Expanded(
            child: Row(
          children: [
            Expanded(child: viewService.buildComponent(CompCasePage.leftArea)),
            Expanded(child: viewService.buildComponent(CompCasePage.rightArea)),
          ],
        )),

        //按钮
        Expanded(
            child: Center(
          child: RawMaterialButton(
            fillColor: Colors.blue,
            shape: StadiumBorder(),
            onPressed: ()=>dispatch(CompCaseActionCreator.change()),
            child: Text("改变"),
          ),
        ))
      ],
    ),
  );
}
