import 'package:first/shared/components/component.dart';
import 'package:flutter/material.dart';
import 'package:first/shared/cubit/cubit.dart';
import 'package:first/shared/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class done_task extends StatelessWidget {
  const done_task({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoCubit,TodoStates>(
      listener: (context,state){},
      builder: (context,state){
        var task=TodoCubit.get(context).donetasks;
        return
          Task_build(task);
      },


    );
  }
}
