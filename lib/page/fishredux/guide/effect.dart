import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/widgets.dart' hide Action;
import 'package:flutter_my_app/main.dart';

import 'action.dart';
import 'state.dart';

Effect<GuideState> buildEffect() {
  return combineEffects(<Object, Effect<GuideState>>{
    GuideAction.jumpToCounter: _jumpToCounter,
    GuideAction.jumpToJump: _jumpToJump,
    GuideAction.jumpToList: _jumpToList,
    GuideAction.jumpToListEdit: _jumpToListEdit,
    GuideAction.jumpToMultiList: _jumpToMultiList,
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
