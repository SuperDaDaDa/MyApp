import 'package:fish_redux/fish_redux.dart';

///隐藏系统包中的Action类
import 'package:flutter/cupertino.dart' hide Action;

import 'action.dart';
import 'state.dart';

Effect<SecondState> buildEffect() {
  return combineEffects(<Object, Effect<SecondState>>{
    SecondAction.backFirst: _backFirst,
  });
}

void _backFirst(Action action, Context<SecondState> ctx) {
  ///pop当前页面，并且返回相应的数据
  Navigator.pop(ctx.context, {"secondValue": SecondState.fixedMsg});
}
