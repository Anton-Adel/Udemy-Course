
import 'package:first/layout/ShopApp/cubit/cubit.dart';
import 'package:first/layout/ShopApp/shop_layout.dart';
import 'package:first/modules/shop_app/Register/RegisterScreen.dart';
import 'package:first/modules/shop_app/onboardingscreen/Login/cubit/shop_cubit.dart';
import 'package:first/modules/shop_app/onboardingscreen/Login/cubit/shop_states.dart';
import 'package:first/shared/components/component.dart';
import 'package:first/shared/components/constants.dart';
import 'package:first/shared/network/local/cashHelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Shop_Login_Screen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
var mailcontroller= TextEditingController();
var passwordcontroller= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>ShopAppCubit(),
      child: BlocConsumer<ShopAppCubit,ShopAppStates>(
        listener: (context,state){
          if(state is ShopAppSuccessState)
            {
              if(state.UserModel!.status==true)
                {
                  print(state.UserModel!.message);
                  print(state.UserModel!.uermodel!.token);
                  CashHelper.SetData(key: 'token', value: state.UserModel!.uermodel!.token).then((value) {

                    token=ShopAppCubit.get(context).UserModel!.uermodel!.token;
                    ShopCubit.get(context).GetUserModel();
                    navigate_replace(context, ShopLayout());
                    showTost(state.UserModel!.message.toString(), TostStatus.SUCCESS);
                  });

                }
              else
                {
                 showTost(state.UserModel!.message.toString(), TostStatus.ERROR);
                }
            }

        },
        builder: (context,state){
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('LOGIN',
                          style: Theme.of(context).textTheme.headline3!.copyWith(
                              color: Colors.black
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text('Login to our shop app',
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: Colors.grey
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        DefaultTextFeild(
                            controller: mailcontroller,
                            type: TextInputType.emailAddress,
                            label: 'e-mail',
                            prefix: Icons.email_outlined,
                            validate: (value){
                              if(value!.isEmpty) {
                                return 'Empty e-mail';
                              }
                              else
                                return null;
                            }),
                        SizedBox(
                          height: 15,
                        ),
                        DefaultTextFeild(
                            controller: passwordcontroller,
                            type: TextInputType.visiblePassword,
                            label: 'password',
                            password: ShopAppCubit.get(context).password,
                            prefix: Icons.lock_outline,
                            suffix: IconButton(
                              onPressed: () {
                                ShopAppCubit.get(context).visible();
                              },
                              icon: Icon(
                                  ShopAppCubit.get(context).password? Icons.visibility:Icons.visibility_off
                              ),
                            ),
                            validate: (value){
                              if(value!.isEmpty) {
                                return 'Empty password';
                              }
                              else
                                return null;
                            }),
                        SizedBox(
                          height: 15,
                        ),
                        state is! ShopAppLoadinglState?defaultButton(
                          function: (){
                            if(formKey.currentState!.validate())
                              {
                                ShopAppCubit.get(context).UserLogin(e_mail: mailcontroller.text, password: passwordcontroller.text);

                              }
                          },
                          text: 'Login',
                          upper: true,):Center(child: CircularProgressIndicator()),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Don\’t have an acount',
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                            TextButton(onPressed: (){
                              navigate(context, RegisterScreen());
                            },
                              child: Text('REGESTER'),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },

      ),
    );
  }
}
