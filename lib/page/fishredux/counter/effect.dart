
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_my_app/page/fishredux/counter/action.dart';
import 'package:flutter_my_app/page/fishredux/counter/state.dart';

Effect<CountState> buildEffect() {
  return combineEffects(<Object, Effect<CountState>>{
    CountAction.increase: _onIncrease,
  });
}
///自增数
void _onIncrease(Action action, Context<CountState> ctx) {
  ///处理自增数逻辑
  int count = ctx.state.count + 1;
  ctx.dispatch(CountActionCreator.updateCount(count));
}

