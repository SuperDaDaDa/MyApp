import 'package:fish_redux/fish_redux.dart';

class SecondState implements Cloneable<SecondState> {
  ///传递给下个页面的值
  static const String fixedMsg = "\n我是SecondPage页面传递过来的数据：SecondValue";

  ///展示传递过来的值
  String msg;

  @override
  SecondState clone() {
    return SecondState()..msg = msg;
  }
}

///获取上个页面传递过来的数据
SecondState initState(Map<String, dynamic> args) {
  print("second State");
  return SecondState()..msg = args["firstValue"];
}
