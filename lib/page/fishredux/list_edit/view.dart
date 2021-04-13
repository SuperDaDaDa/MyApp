import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    ListEditState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text("ListEditPage"),
    ),
    body: _itemWidget(state, viewService),
  );
}


Widget _itemWidget(ListEditState state , ViewService viewService){
  if(state.items != null){
    return ListView.builder(
      itemBuilder: viewService.buildAdapter().itemBuilder,
      itemCount: viewService.buildAdapter().itemCount,
    );
  }else{
    return Center(child: CircularProgressIndicator(),);
  }
}
