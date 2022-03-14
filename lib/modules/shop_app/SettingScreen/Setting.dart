
import 'package:first/layout/ShopApp/cubit/cubit.dart';
import 'package:first/layout/ShopApp/cubit/states.dart';
import 'package:first/models/shop_app/shop_login_model.dart';
import 'package:first/modules/shop_app/onboardingscreen/Login/cubit/shop_states.dart';
import 'package:first/shared/components/component.dart';
import 'package:first/shared/components/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingScreen extends StatelessWidget {
  var FormKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopCubit, ShopStates>(
      listener: (context, state) {},
      builder: (context, state) {
        ShopLoginModel model = ShopCubit.get(context).UserModel!;
        nameController.text = model.uermodel!.name!;
        emailController.text = model.uermodel!.email!;
        phoneController.text = model.uermodel!.phone!;
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: FormKey,
              child: Column(

                children: [
                  if(state is ShopSuccessUpdateLoadingState)
                  LinearProgressIndicator(),
                  SizedBox(
                    height: 20,
                  ),
                  DefaultTextFeild(
                      controller: nameController,
                      type: TextInputType.text,
                      label: "Name",
                      prefix: Icons.person,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'Empty name';
                        } else
                          return null;
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  DefaultTextFeild(
                      controller: emailController,
                      type: TextInputType.emailAddress,
                      label: "e-mail",
                      prefix: Icons.mail,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'Empty e-mail';
                        } else
                          return null;
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  DefaultTextFeild(
                      controller: phoneController,
                      type: TextInputType.phone,
                      label: "phone",
                      prefix: Icons.phone,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'Empty phone';
                        } else
                          return null;
                      }),

                  SizedBox(
                    height: 20,
                  ),
                  defaultButton(
                      background: Colors.grey,
                      function: () {
                        if(FormKey.currentState!.validate()) {
                          ShopCubit.get(context).UpdadteUserModel(
                              name: nameController.text,
                              email: emailController.text,
                              phone: phoneController.text);
                        }

                      },
                      text: "UPDATE"),
                  SizedBox(
                    height: 20,
                  ),
                  defaultButton(
                      background: Colors.grey,
                      function: () {
                        SignOut(context);
                      },
                      text: "LOGOUT"),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
