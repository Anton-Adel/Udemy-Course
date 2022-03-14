import 'package:first/modules/basics_app/increment/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class incrementcubit extends Cubit<incrementstates>{
  incrementcubit() : super(InitialsState());
static incrementcubit get(context){
  return BlocProvider.of(context);
}
  int num=1;
  void minus(){
    num--;
    emit(MinusState(num));

  }
  void plus(){
    num++;
    emit(PlusState(num));
  }

}