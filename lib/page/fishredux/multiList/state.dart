import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_my_app/page/fishredux/multiList/adapter.dart';
import 'package:flutter_my_app/page/fishredux/multiList/item_one/item_state.dart';

class MultiListState extends MutableSource implements Cloneable<MultiListState> {

  List<ItemOneState> items;

  @override
  MultiListState clone() {
    return MultiListState()..items = items;
  }

  @override
  Object getItemData(int index)  => items[index];

  @override
  String getItemType(int index) {
    if(index %2 == 0) {
      return MultiAdapter.itemStyleOne;
    }else{
      return MultiAdapter.itemStyleTwo;
    }
  }

  @override
  // TODO: implement itemCount
  int get itemCount => items.length;

  @override
  void setItemData(int index, Object data) {
    items[index] = data;
  }
}

MultiListState initState(Map<String, dynamic> args) {
  return MultiListState()..items = [
    ItemOneState(id: 1, title: "列表Item-1", itemStatus: false),
    ItemOneState(id: 2, title: "列表Item-2", itemStatus: false),
    ItemOneState(id: 3, title: "列表Item-3", itemStatus: false),
    ItemOneState(id: 4, title: "列表Item-4", itemStatus: false),
    ItemOneState(id: 5, title: "列表Item-5", itemStatus: false),
    ItemOneState(id: 6, title: "列表Item-6", itemStatus: false),
  ];
}
