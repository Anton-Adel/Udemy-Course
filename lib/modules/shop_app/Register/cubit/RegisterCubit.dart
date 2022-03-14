import 'package:first/models/shop_app/shop_login_model.dart';
import 'package:first/modules/shop_app/Register/cubit/RegisterState.dart';
import 'package:first/modules/shop_app/onboardingscreen/Login/cubit/shop_states.dart';
import 'package:first/shared/network/Endpoint.dart';
import 'package:first/shared/network/remote/shop_dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopRegisterCubit extends Cubit<ShopRegisterStates>
{
  ShopLoginModel? UserModel;
  ShopRegisterCubit():super(ShopRegisterInitialState());
  static ShopRegisterCubit get(context)=> BlocProvider.of(context);

  void UserRegister(
  {
  required String name,
    required String email,
    required String password,
    required String phone
}
      ){
    emit(ShopRegisterLoadinglState());
    ShopDioHelper.postData(url: REGISTER, Data: {
      'name': name,
      'phone': phone,
      'email': email,
      'password': password,

    },).then((value){
      print(value.data);

      UserModel=ShopLoginModel.fromJson(value.data);
      print(UserModel!.message);

      emit(ShopRegisterSuccessState(UserModel));
    }).catchError((error){
      emit(ShopRegisterErrorState(error: error.toString()));
    });
  }
  bool password=true;
  void visible(){
    password=!password;
    emit(ShopRegisterpasswordVisiability());
  }
}