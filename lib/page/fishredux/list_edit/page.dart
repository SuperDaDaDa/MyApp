import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_my_app/page/fishredux/list_edit/adapter.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ListEditPage extends Page<ListEditState, Map<String, dynamic>> {
  ListEditPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<ListEditState>(
                adapter: NoneConn<ListEditState>()+EditAdapter(),
                slots: <String, Dependent<ListEditState>>{
                }),
            middleware: <Middleware<ListEditState>>[
            ],);

}
