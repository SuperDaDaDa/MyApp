import 'package:fish_redux/fish_redux.dart';

class ItemOneState implements Cloneable<ItemOneState> {
  int id;
  String title;
  bool itemStatus;

  ItemOneState({this.id, this.title, this.itemStatus});

  @override
  ItemOneState clone() {
    return ItemOneState()
      ..title = title
      ..id = id
      ..itemStatus = itemStatus;
  }
}

ItemOneState initState(Map<String, dynamic> args) {
  return ItemOneState();
}
