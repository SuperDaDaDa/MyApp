import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_my_app/page/cubit/counter_cubit.dart';

// state -> cubit -> view

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocBuilder<CounterCubit,CounterState>(builder:_counter),
    );
  }

  Widget _counter(BuildContext context, CounterState state){
    return Scaffold(
      appBar: AppBar(title: Text("Cubit范例"),),
      body: Center(
        child: Text('点击了${state.count}次',style: TextStyle(fontSize: 30.0),),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => BlocProvider.of<CounterCubit>(context).increase(),
          child: const Icon(Icons.add),
        ),
    );
  }


}
