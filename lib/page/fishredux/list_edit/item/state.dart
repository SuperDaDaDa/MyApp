import 'package:fish_redux/fish_redux.dart';

class EditItemState implements Cloneable<EditItemState> {
  int id;
  String title;
  bool itemStatus;

  EditItemState({this.id, this.title, this.itemStatus});

  @override
  EditItemState clone() {
    return EditItemState()
      ..title = title
      ..id = id
      ..itemStatus = itemStatus;
  }
}

EditItemState initState(Map<String, dynamic> args) {
  return EditItemState();
}
