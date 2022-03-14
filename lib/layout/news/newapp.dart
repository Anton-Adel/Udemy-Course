import 'package:first/layout/news/cubit/cubit.dart';
import 'package:first/layout/news/cubit/states.dart';
import 'package:first/modules/web_view/search/Search.dart';
import 'package:first/shared/components/component.dart';
import 'package:first/shared/network/remote/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class NewApp extends StatelessWidget {
  const NewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStates>(
      listener: (context,state){},
      builder: (context,state)
      {
        NewsCubit cubit=NewsCubit.get(context);
        return  Scaffold(

          appBar: AppBar(
            title: Text("News App"),
            actions: [
              IconButton(onPressed: (){

                navigate(context, Search());
              }, icon: Icon(Icons.search)),
              IconButton(onPressed: (){
                cubit.changeMode(1);
              },
                  icon: cubit.mode?Icon(Icons.brightness_6_outlined):Icon(Icons.brightness_6_outlined))
            ],
          ),
          body: cubit.Screens[cubit.current_index],
          bottomNavigationBar: BottomNavigationBar(
           currentIndex: cubit.current_index,
            items: cubit.MoveScreens,
            onTap: (index){
             cubit.ChangeBottomNavBar(index);
            },
          ),

        );
      },


    );
  }
}
