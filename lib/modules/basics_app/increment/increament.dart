
import 'package:first/modules/basics_app/increment/cubit/cubit.dart';
import 'package:first/modules/basics_app/increment/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class increment extends StatelessWidget {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(

      create: (BuildContext context) => incrementcubit(),
      child: BlocConsumer<incrementcubit,incrementstates>(
        listener: (context,state){},
        builder: (context,state){
          return  Scaffold(
            body: SafeArea(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(
                      width: 100,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: IconButton(onPressed: () {
                         incrementcubit.get(context).plus();
                        },
                            icon: Icon(Icons.add)

                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,

                    ),
                    Text("${incrementcubit.get(context).num}",
                      style: TextStyle(fontSize: 60, color: Colors.amber),
                    ),
                    SizedBox(
                      width: 30,

                    ),
                    Container(
                      width: 100,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: IconButton(onPressed: () {
                          incrementcubit.get(context).minus();
                        },
                            icon: Icon(Icons.remove)

                        ),
                      ),
                    ),


                  ],


                ),
              ),
            ),


          );
        },

      ),
    );
  }
}





