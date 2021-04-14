import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_my_app/page/fishredux/comp/left_right_area/component.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class CompCasePage extends Page<CompCaseState, Map<String, dynamic>> {
  static final String leftArea = "leftArea";
  static final String rightArea = "rightArea";

  CompCasePage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<CompCaseState>(
              adapter: null,
              slots: <String, Dependent<CompCaseState>>{
                //绑定Component
                leftArea: LeftAreaConnector() + AreaComponent(),
                rightArea: RightAreaConnector() + AreaComponent(),
              }),
          middleware: <Middleware<CompCaseState>>[],
        );
}
