import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_my_app/page/fishredux/list_edit/item/component.dart';
import 'package:flutter_my_app/page/fishredux/list_edit/state.dart';

class EditAdapter extends SourceFlowAdapter<ListEditState> {
  static const String itemName = "item";

  EditAdapter()
      : super(
          pool: <String, Component<Object>>{
            ///定义item的样式
            itemName: EditItemComponent(),
          },
        );
}
