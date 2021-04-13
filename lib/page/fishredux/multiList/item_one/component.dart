import 'package:fish_redux/fish_redux.dart';

import 'item_state.dart';
import 'view.dart';

class ItemOneComponent extends Component<ItemOneState> {
  ItemOneComponent()
      : super(
            view: buildView,
            dependencies: Dependencies<ItemOneState>(
                adapter: null,
                slots: <String, Dependent<ItemOneState>>{
                }),);

}
