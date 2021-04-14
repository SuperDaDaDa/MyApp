import 'package:fish_redux/fish_redux.dart';

///隐藏系统包中的Action类
import 'package:flutter/cupertino.dart' hide Action;
import 'package:flutter_my_app/page/fishredux/broadcast/action.dart';

import 'action.dart';
import 'state.dart';

Effect<SecondState> buildEffect() {
  return combineEffects(<Object, Effect<SecondState>>{
    SecondAction.backFirst: _backFirst,
    BroadcastAction.toNotify:_toNotify,
  });
}

void _backFirst(Action action, Context<SecondState> ctx) {
  ///pop当前页面，并且返回相应的数据
   Navigator.pop(ctx.context, {"secondValue": SecondState.fixedMsg});
}


///表明一处发送，多处接受
void _toNotify(Action action, Context<SecondState> ctx) async {
  ///接受广播
  print("Secondpage:${action.payload}");
}