import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_my_app/page/fishredux/list/item/component.dart';
import 'package:flutter_my_app/page/fishredux/list/state.dart';


class NewsListAdapter extends SourceFlowAdapter<ListState> {
  static const String item_style = "project_tab_item";

  NewsListAdapter()
      : super(
          pool: <String, Component<Object>>{
            ///定义item的样式
            item_style: ItemComponent(),
          },
        );
}
