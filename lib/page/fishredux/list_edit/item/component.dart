import 'package:fish_redux/fish_redux.dart';

import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class EditItemComponent extends Component<EditItemState> {
  EditItemComponent()
      : super(
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<EditItemState>(
                adapter: null,
                slots: <String, Dependent<EditItemState>>{
                }),);

}
