import 'package:bloc/bloc.dart';
import 'package:first/layout/ShopApp/cubit/states.dart';
import 'package:first/models/shop_app/CategoriyModel.dart';
import 'package:first/models/shop_app/FavouriteModel.dart';
import 'package:first/models/shop_app/GetFavouriteModel.dart';
import 'package:first/models/shop_app/home_model.dart';
import 'package:first/models/shop_app/shop_login_model.dart';
import 'package:first/modules/shop_app/CategoriesScreen/Categories.dart';
import 'package:first/modules/shop_app/FavourateScreen/Favourate.dart';
import 'package:first/modules/shop_app/ProductsScreen/Products.dart';
import 'package:first/modules/shop_app/SearchScreen/cubit/states.dart';
import 'package:first/modules/shop_app/SettingScreen/Setting.dart';
import 'package:first/shared/components/component.dart';
import 'package:first/shared/components/constants.dart';
import 'package:first/shared/network/Endpoint.dart';
import 'package:first/shared/network/remote/dio_helper.dart';
import 'package:first/shared/network/remote/shop_dio_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopCubit extends Cubit<ShopStates> {
  ShopCubit() : super(ShopInitialState());

  static ShopCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> ShopScreens = [
    ProductsScreen(),
    CategoriesScreen(),
    FavourateScreen(),
    SettingScreen()
  ];

  void ChangeBottomNavBar(int index) {
    currentIndex = index;
    emit(ShopBottomNavBar());
  }

  HomeModel? home_model;
  Map<int, bool> favourite = {};
  void GetHomeData() {
    emit(ShopLoaddingState());
    ShopDioHelper.getData(url: HOME, token: token).then((value) {
      home_model = HomeModel.fromjson(value.data);
      print(home_model!.data!.banners[0].id);
      print(token);
      home_model!.data!.products.forEach((element) {
        favourite.addAll({
          element.id!: element.in_favorites!,
        });
      });
      print(favourite.toString());
      emit(ShopSuccessHomeState());
    }).catchError((error) {
      print(error.toString());
      emit(ShopErrorHomeState());
    });
  }

  CategoryModel? categoryModel;

  void GetCategories() {
    ShopDioHelper.getData(url: CATEGORIES).then((value) {
      categoryModel = CategoryModel.fromjson(value.data);
      emit(ShopSuccessCategoriesState());
    }).catchError((error) {
      print(error.toString());
      emit(ShopErrorCategoriesState());
    });
  }

  FavouriteModel? Favourite;

  Favourite_Model? favouriteModel;

  void ChangeFavourite(int id) {
    favourite[id] = !favourite[id]!;
    emit(ShopChangedFavouriteState());
    print(token);
    ShopDioHelper.postData(
            url: FAVOURITE,
            Data: {
              'product_id': id,
            },
            Token: token)
        .then((value) {
      Favourite = FavouriteModel.fromjson(value.data);
      if (Favourite!.statue == false) {
        favourite[id] = !favourite[id]!;
        showTost(Favourite!.message!, TostStatus.ERROR);
      } else {
        favouriteModel = null;
        GetFavourites();
      }

      emit(ShopSuccessChangeFavouriteState());
    }).catchError((error) {
      print('error');
      favourite[id] = !favourite[id]!;
      showTost(Favourite!.message!, TostStatus.ERROR);
      emit(ShopErrorChangeFavouriteState());
    });
  }

  void GetFavourites() {
    emit(ShopSuccessFavouriteLoadingState());
    ShopDioHelper.getData(url: FAVOURITE, token: token).then((value) {
      favouriteModel = Favourite_Model.fromJson(value.data);
      print("Anton");
      print(favouriteModel.toString());
      emit(ShopSuccessFavouriteState());
    }).catchError((error) {
      print(error.toString());
      emit(ShopErrorFavouriteState());
    });
  }

  ShopLoginModel? UserModel;

  void GetUserModel() {
    ShopDioHelper.getData(url: USERMODEL, token: token).then((value) {
      UserModel = ShopLoginModel.fromJson(value.data);
      print(UserModel!.uermodel!.name);
      emit(ShopSuccessUserState());
    }).catchError((error) {
      print(error.toString());
      emit(ShopErrorUserState());
    });
  }

  void UpdadteUserModel({
    required String name,
    required String email,
    required String phone,
  }) {
    emit(ShopSuccessUpdateLoadingState());
    ShopDioHelper.UpdateData(
      url: Update_USERMODEL,
      Token: token,
      Data: {
        'name': name,
        'email': email,
        'phone': phone,
      },
    ).then((value) {
      UserModel = ShopLoginModel.fromJson(value.data);
      print(UserModel!.uermodel!.name);
      emit(ShopSuccessUpdateState());
    }).catchError((error) {
      print(error.toString());
      emit(ShopErrorUpdateState());
    });
  }
}
