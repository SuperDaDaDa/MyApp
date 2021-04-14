import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/widgets.dart' hide Action;
import 'package:flutter_my_app/main.dart';
import 'package:flutter_my_app/page/fishredux/broadcast/action.dart';

import 'action.dart';
import 'state.dart';

Effect<GuideState> buildEffect() {
  return combineEffects(<Object, Effect<GuideState>>{
    GuideAction.jumpToCounter: _jumpToCounter,
    GuideAction.jumpToJump: _jumpToJump,
    GuideAction.jumpToList: _jumpToList,
    GuideAction.jumpToListEdit: _jumpToListEdit,
    GuideAction.jumpToMultiList: _jumpToMultiList,
    GuideAction.jumpToComponent: _jumpToComponent,
    //接受发送的广播消息
    BroadcastAction.toNotify: _toNotify,
  });
}

void _jumpToCounter(Action action, Context<GuideState> ctx) {
  Navigator.pushNamed(ctx.context, RouteConfig.countPage);
}

void _jumpToJump(Action action, Context<GuideState> ctx) {
  Navigator.pushNamed(ctx.context, RouteConfig.firstPage);
}

void _jumpToList(Action action, Context<GuideState> ctx) {
  Navigator.pushNamed(ctx.context, RouteConfig.listPage);
}

void _jumpToListEdit(Action action, Context<GuideState> ctx) {
  Navigator.pushNamed(ctx.context, RouteConfig.listEditPage);
}

void _jumpToMultiList(Action action, Context<GuideState> ctx) {
  Navigator.pushNamed(ctx.context, RouteConfig.listMultiPage);
}

void _jumpToComponent(Action action, Context<GuideState> ctx) {
  Navigator.pushNamed(ctx.context, RouteConfig.componentPage);
}

///表明一处发送，多处接受
void _toNotify(Action action, Context<GuideState> ctx) async {
  ///接受广播
  print("导航页面:${action.payload}");
}
