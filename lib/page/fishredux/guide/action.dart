import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum GuideAction { jumpToCounter, jumpToList, jumpToJump, jumpToListEdit,jumpToMultiList }

class GuideActionCreator {
  //跳转到计数器
  static Action jumpToCounter() {
    print("======");
    return  Action(GuideAction.jumpToCounter);
  }

  //跳转到列表
  static Action jumpToList() {
    return  Action(GuideAction.jumpToList);
  }

  //跳转到列表编辑
  static Action jumpToListEdit() {
    return  Action(GuideAction.jumpToListEdit);
  }


  //跳转到多样式列表
  static Action jumpToMultiList() {
    return  Action(GuideAction.jumpToMultiList);
  }

  //跳转到跳转示例
  static Action jumpToJump() {
    return  Action(GuideAction.jumpToJump);
  }


}
