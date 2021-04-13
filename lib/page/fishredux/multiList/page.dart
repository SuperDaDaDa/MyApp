import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_my_app/page/fishredux/multiList/adapter.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

//多样式列表
class MultiListPage extends Page<MultiListState, Map<String, dynamic>> {
  MultiListPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<MultiListState>(
                adapter: NoneConn<MultiListState>()+MultiAdapter(),
                slots: <String, Dependent<MultiListState>>{
                }),
            middleware: <Middleware<MultiListState>>[
            ],);

}
