import 'package:first/shared/components/component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool password = true;
  var EmailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.lock),
        title: Text(

          'Login Screen',
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Colors.orange,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Share your photos and posts with your friends ',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),

                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image(image: AssetImage("assets/images/osc.png"),
                        height: 90,
                        width: 90,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold,),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    // TextFormField(
                    //   controller: EmailController,
                    //   keyboardType: TextInputType.emailAddress,
                    //
                    //   onFieldSubmitted:(value){
                    //
                    //   },
                    //   onChanged:(value){
                    //
                    //   },
                    //   decoration: InputDecoration(
                    //     labelText: "E_mail",
                    //     prefixIcon: Icon(Icons.email),
                    //
                    //     border: OutlineInputBorder(),
                    //   ),
                    //   validator: (ss){
                    //
                    //     if(ss!.isEmpty)
                    //       return "Empty email";
                    //     return null;
                    //
                    //   },
                    //
                    // ),
                    DefaultTextFeild(
                      label: 'E_mail',
                      controller: EmailController,
                      validate: (ss) {
                        if (ss!.isEmpty)
                          return "Empty E_mail";
                        else
                          return null;
                      },
                      prefix: Icons.email,
                      type: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    // TextFormField(
                    //
                    //   controller: passwordController,
                    //   keyboardType: TextInputType.visiblePassword,
                    //
                    //   obscureText: password,
                    //   onFieldSubmitted: (value){
                    //   },
                    //
                    //   onChanged: (value){
                    //   },
                    //   decoration: InputDecoration(
                    //       labelText: 'Password',
                    //       prefixIcon: Icon(Icons.lock),
                    //       suffixIcon: IconButton(
                    //         onPressed: (){
                    //           setState(() {
                    //             password= !password;
                    //           });
                    //         },
                    //         icon: Icon(password? Icons.visibility:Icons.visibility_off),
                    //
                    //       ),
                    //       border: OutlineInputBorder()
                    //   ),
                    //   validator: (value){
                    //     if(value!.isEmpty)
                    //     {
                    //       return 'Empty Password';
                    //     }
                    //
                    //     return null;
                    //   },
                    // ),
                    DefaultTextFeild(
                      label: 'PassWord',
                      controller: passwordController,
                      validate: (ss) {
                        if (ss!.isEmpty)
                          return "Empty PassWord";
                        else
                          return null;
                      },
                      prefix: Icons.lock,
                      password: password,
                      suffix: IconButton(
                        onPressed: () {
                          setState(() {
                            password = !password;
                          });
                        },
                        icon: Icon(
                            password ? Icons.visibility : Icons.visibility_off),
                      ),
                      type: TextInputType.visiblePassword,
                    ),

                    SizedBox(
                      height: 15,
                    ),
                    defaultButton(
                      function: () {
                        if (formKey.currentState!.validate()) {
                          print(EmailController.text);
                          print(passwordController.text);
                        }
                      },
                      text: "login",
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account?',
                          style: TextStyle(fontSize: 15),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Register',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
