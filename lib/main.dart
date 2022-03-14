import 'package:firebase_core/firebase_core.dart';
import 'package:first/layout/ShopApp/cubit/cubit.dart';
import 'package:first/layout/ShopApp/shop_layout.dart';
import 'package:first/layout/news/cubit/cubit.dart';
import 'package:first/layout/news/cubit/states.dart';
import 'package:first/layout/news/newapp.dart';
import 'package:first/layout/social-app/home-screen.dart';
import 'package:first/layout/social-app/social-app-cubit/social-app-cubit.dart';
import 'package:first/layout/todo.dart';
import 'package:first/modules/shop_app/onboardingscreen/Login/shop_login_screen.dart';
import 'package:first/modules/shop_app/onboardingscreen/OnboardingScreen.dart';
import 'package:first/modules/social_app/social-login/social-login.dart';

import 'package:first/shared/My_bloc_observed.dart';
import 'package:first/shared/components/constants.dart';
import 'package:first/shared/network/local/cashHelper.dart';
import 'package:first/shared/network/remote/dio_helper.dart';
import 'package:first/shared/network/remote/shop_dio_helper.dart';
import 'package:first/shared/style/Themes.dart';
import 'package:first/test.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
// hi
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  BlocOverrides.runZoned(
        () {
      // Use cubits...
    },
    blocObserver: MyBlocObserver(),
  );
  await Firebase.initializeApp();
  DioHelper.init();
  ShopDioHelper.init();
  await CashHelper.init();
  Widget widget_;
  bool? isdark =CashHelper.getBoolean("isDark");
 // bool? onboarding=CashHelper.getData('onboarding');
   //token=CashHelper.getData('token');
  uId=CashHelper.getData('uId');
  // print(onboarding);

  // print(token);
  // if(onboarding!=null)
  //   {
  //     if(token!=null) widget_=ShopLayout();
  //     else
  //       widget_=Shop_Login_Screen();
  //   }
  // else
  //   widget_=OnboardingScreen();
  print("TONT");
  print(uId);
  if(uId!=null)
    {
      widget_=SocialHomeScreen();
    }
  else
    {
      widget_=SocialLoginScreen();
    }
  runApp(MyApp(Isdark: isdark,widget: widget_,));
}

class MyApp extends StatelessWidget {

  bool? Isdark;
 Widget? widget;
  MyApp({
    this.Isdark,
    this.widget
});
  // This widget is the root of your application.
  @override
  Widget build (BuildContext context) {
    return MultiBlocProvider(
      providers: [
       BlocProvider( create: (BuildContext context)=>NewsCubit()..getBusiness()..changeMode(0)),
        BlocProvider( create: (BuildContext context)=>ShopCubit()..GetHomeData()..GetCategories()..GetUserModel()..GetFavourites()),
        BlocProvider(create: (BuildContext context)=>SocialLayoutCubit()..GetUserData()..GetPosts()..GetUsers(),)
      ],

      child: BlocConsumer<NewsCubit,NewsStates>(
        listener: (context,state){},
        builder: (context,state){
          return  MaterialApp( home:widget!,
            debugShowCheckedModeBanner: false,
            theme: lighttheme,
            darkTheme: darktheme,
            themeMode:NewsCubit.get(context).mode?ThemeMode.dark:ThemeMode.light,
          );
        },

      ),
    );
  }
}