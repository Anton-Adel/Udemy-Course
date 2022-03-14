import 'package:first/models/shop_app/shop_login_model.dart';
import 'package:first/modules/shop_app/onboardingscreen/Login/cubit/shop_states.dart';
import 'package:first/shared/network/Endpoint.dart';
import 'package:first/shared/network/remote/shop_dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopAppCubit extends Cubit<ShopAppStates>
{
  ShopLoginModel? UserModel;
  ShopAppCubit():super(ShopAppInitialState());
  static ShopAppCubit get(context)=> BlocProvider.of(context);

  void UserLogin(
  {
  required String e_mail,
    required String password
}
      ){
    emit(ShopAppLoadinglState());
    ShopDioHelper.postData(url: LOGIN, Data: {
      'email': e_mail,
      'password': password,
    },).then((value){
      print(value.data);

      UserModel=ShopLoginModel.fromJson(value.data);
      print(UserModel!.message);

      emit(ShopAppSuccessState(UserModel));
    }).catchError((error){
      emit(ShopAppErrorState(error: error.toString()));
    });
  }
  bool password=true;
  void visible(){
    password=!password;
    emit(ShopApppasswordVisiability());
  }
}