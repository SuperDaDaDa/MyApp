import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_app/page/fishredux/counter/action.dart';
import 'package:flutter_my_app/page/fishredux/counter/state.dart';



Widget buildView(CountState state, Dispatch dispatch, ViewService viewService) {
  return _bodyWidget(state,dispatch);
}

Widget _bodyWidget(CountState state, Dispatch dispatch){
  return Scaffold(
    appBar: AppBar(
      title: Text("FishRedux"),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('You have pushed the button this many times:'),
          ///使用state中的变量，控住数据的变换
          Text(state.count.toString()),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        // dispatch(CountActionCreator.countIncrease());
        //点击事件，调用action 计数自增方法
        dispatch(CountActionCreator.updateCount());
      }, child: Icon(Icons.add),
    ),
  );
}
