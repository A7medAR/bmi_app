import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/shared/components/components.dart';
import 'package:untitled/shared/cubit/cubit.dart';
import 'package:untitled/shared/cubit/states.dart';

class DoneTasksScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state){
        var tasks = AppCubit.get(context).doneTasks;
        return  ListView.separated(itemBuilder:(context,index) =>buildTaskItem(tasks[index],context), separatorBuilder:(context,index) =>
            Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey,
            ),
            itemCount: tasks.length);
      },

    );
  }
}
