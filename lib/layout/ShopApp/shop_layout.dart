
import 'package:first/layout/ShopApp/cubit/cubit.dart';
import 'package:first/layout/ShopApp/cubit/states.dart';
import 'package:first/modules/shop_app/SearchScreen/Search.dart';
import 'package:first/modules/shop_app/onboardingscreen/Login/shop_login_screen.dart';
import 'package:first/shared/components/component.dart';
import 'package:first/shared/network/local/cashHelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopLayout extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopCubit,ShopStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit=ShopCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: Text('7agatk'),
            actions: [
              IconButton(onPressed: (){
                navigate(context, SearchScreen());
              }, icon: Icon(Icons.search))
            ],
          ),
          body: cubit.ShopScreens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index)
            {
              cubit.ChangeBottomNavBar(index);
            },
            currentIndex: cubit.currentIndex,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(icon: Icon(Icons.apps),
                label: 'Categories',
              ),
              BottomNavigationBarItem(icon: Icon(Icons.favorite_border),
                label: 'Favourites',
              ),
              BottomNavigationBarItem(icon: Icon(Icons.settings),
                label: 'Setting',
              ),
            ],
          ),

        );

      },

    );
  }
}
