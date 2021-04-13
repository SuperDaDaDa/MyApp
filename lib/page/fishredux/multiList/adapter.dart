import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_my_app/page/fishredux/multiList/item_one/component.dart';
import 'package:flutter_my_app/page/fishredux/multiList/item_two/component.dart';
import 'package:flutter_my_app/page/fishredux/multiList/state.dart';

class MultiAdapter extends SourceFlowAdapter<MultiListState> {

  static final String  itemStyleOne= "itemStyleOne";
  static final String  itemStyleTwo= "itemStyleTwo";
  MultiAdapter()
      : super(
          pool: <String, Component<Object>>{
            itemStyleOne :ItemOneComponent(),
            itemStyleTwo :ItemTwoComponent()
          },
          );
}
