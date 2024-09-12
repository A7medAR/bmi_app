import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/layout/news_app/cubit/cubit.dart';
import 'package:untitled/layout/news_app/cubit/states.dart';
import '../../shared/components/components.dart';


class BusinessScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var list= NewsCubit.get(context).business;

    return BlocConsumer<NewsCubit,NewsStates>(
      listener: (context,state){},
    builder:(context,state){
      return ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder:(context,index)=>buildArticleItem(context,list[index]),
        separatorBuilder: (context,index)=>myDivider(),
        itemCount: list.length,

      );
    },
    );
  }
}
