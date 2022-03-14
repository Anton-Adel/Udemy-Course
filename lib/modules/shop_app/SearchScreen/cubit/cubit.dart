import 'package:first/models/shop_app/SearchModel.dart';
import 'package:first/modules/shop_app/SearchScreen/cubit/states.dart';
import 'package:first/shared/components/constants.dart';
import 'package:first/shared/network/Endpoint.dart';
import 'package:first/shared/network/remote/shop_dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchStates>{
  SearchCubit():super(SearchInitialState());

  SearchModel? searchModel;

  static SearchCubit get(context)=>BlocProvider.of(context);

  void Search(String text){
    searchModel=null;
    emit(SearchLoadingState());
    ShopDioHelper.postData(url: SEARCH, Data:
    {
      'text':text
    },
    Token: token
    ).then((value) {
      print('anton');
      searchModel=SearchModel.fromJson(value.data);
      print('Adel');
      print(searchModel!.data!.data![0].name);
      emit(SearchSuccessState());

    }).catchError((error){
      emit(SearchErrorState());
    });

  }

}