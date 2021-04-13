import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_my_app/page/fishredux/list/item/state.dart';
import 'package:flutter_my_app/page/fishredux/list_edit/adapter.dart';
import 'package:flutter_my_app/page/fishredux/list_edit/item/state.dart';

class ListEditState extends MutableSource implements Cloneable<ListEditState> {
  List<EditItemState> items;

  @override
  ListEditState clone() {
    return ListEditState()..items = items;
  }

  @override
  Object getItemData(int index) {
    return items[index];
  }

  @override
  String getItemType(int index) {
   return EditAdapter.itemName;
  }

  @override
  int get itemCount => items.length;

  @override
  void setItemData(int index, Object data) {
    items[index] = data;
  }
}

ListEditState initState(Map<String, dynamic> args) {
  return ListEditState()..items = [
    EditItemState(id: 1, title: "列表Item-1", itemStatus: false),
    EditItemState(id: 2, title: "列表Item-2", itemStatus: false),
    EditItemState(id: 3, title: "列表Item-3", itemStatus: false),
    EditItemState(id: 4, title: "列表Item-4", itemStatus: false),
    EditItemState(id: 5, title: "列表Item-5", itemStatus: false),
    EditItemState(id: 6, title: "列表Item-6", itemStatus: false),
  ];
}
