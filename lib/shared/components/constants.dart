//https://newsapi.org/
// v2/top-headlines?
//country=eg&category=business&apikey=65f7f556ec76449fa7dc7c0069f040ca



//https://newsapi.org/
// v2/everything?
// q=tesla&from=2022-01-08&sortBy=publishedAt&apiKey=5ef30d2cb7bc49f797d7ea0f0904c3ee


import 'package:first/modules/shop_app/onboardingscreen/Login/shop_login_screen.dart';
import 'package:first/modules/social_app/social-login/social-login.dart';
import 'package:first/shared/components/component.dart';
import 'package:first/shared/network/local/cashHelper.dart';

void SignOut(context){
  CashHelper.RemoveItem(key: 'uId').then((value){
    if(value)
    {
      navigate_replace(context, SocialLoginScreen());
    }
  });
}

String? token='';
String? uId='';