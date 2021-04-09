part of 'main_bloc.dart';

//执行各类事件
@immutable
abstract class MainEvent extends Equatable{
  const MainEvent();
}

class MainInitEvent extends MainEvent{
  @override
  // TODO: implement props
  List<Object> get props => [];

}

///切换NavigationRail的tab
class SwitchTabEvent  extends MainEvent{
  final int selectedIndex;
  const SwitchTabEvent({@required this.selectedIndex});
  @override
  // TODO: implement props
  List<Object> get props => [selectedIndex];

}

///展开NavigationRail,这个逻辑比较简单,就不用传参数了
class IsExtendEvent extends MainEvent{
  const IsExtendEvent();
  @override

  List<Object> get props => [];

}
