part of 'main_bloc.dart';

//存放状态数据
class MainState {
  int selectedIndex;
  bool isExtended;

  ///初始化方法,基础变量也需要赋初值,不然会报空异常
  // MainState init(){
  //   return MainState()..selectedIndex = 0
  //     ..isExtended = false;
  // }

  MainState clone() {
    // return this
    //   ..selectedIndex = selectedIndex
    //   ..isExtended = isExtended;
    return MainState()
      ..selectedIndex = selectedIndex
      ..isExtended = isExtended;
  }

  MainState({this.selectedIndex = 0, this.isExtended = false});


  @override
  String toString() {
    // TODO: implement toString
    return "selectedIndex: ${MainState().selectedIndex}  isExtended:${MainState().isExtended} ";
  }
}
