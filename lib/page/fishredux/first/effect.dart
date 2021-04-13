import 'package:fish_redux/fish_redux.dart';
/// 使用hide方法，隐藏系统包里面的Action类
import 'package:flutter/cupertino.dart' hide Action;
import 'package:flutter_my_app/main.dart';

import 'action.dart';
import 'state.dart';

Effect<FirstState> buildEffect() {
  return combineEffects(<Object, Effect<FirstState>>{
    FirstAction.toSecond: _toSecond,
  });
}

void _toSecond(Action action, Context<FirstState> ctx) async{
   ///页面之间传值；这地方必须写个异步方法，等待上个页面回传过来的值；as关键字是类型转换
    var result = await Navigator.of(ctx.context).pushNamed(RouteConfig.secondPage,arguments:{"firstValue": FirstState.fixedMsg});
    ///获取到数据，更新页面上的数据
    ctx.dispatch(FirstActionCreator.updateMsg((result as Map)["secondValue"]));
}
