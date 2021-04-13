import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_my_app/page/fishredux/multiList/item_one/item_state.dart';

import 'view.dart';

class ItemTwoComponent extends Component<ItemOneState> {
  ItemTwoComponent()
      : super(
            view: buildView,
            dependencies: Dependencies<ItemOneState>(
                adapter: null,
                slots: <String, Dependent<ItemOneState>>{
                }),);

}
