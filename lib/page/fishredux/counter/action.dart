import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum CountAction { increase , updateCount ,test}

//动作层
class CountActionCreator {
  ///去effect层去处理自增数据
  static Action countIncrease() {
    return const Action(CountAction.increase);
  }


  static Action updateCount(int count) {
    return Action(CountAction.updateCount);
  }

  static Action test() {
    return const Action(CountAction.test);
  }

}
