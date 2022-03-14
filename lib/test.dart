import 'package:first/shared/components/component.dart';
import 'package:flutter/material.dart';
class test extends StatelessWidget {
var cont=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/osc.png'),
            fit: BoxFit.cover


          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(

                color: Colors.grey.withOpacity(0.6),
                child: DefaultTextFeild(controller: cont, type: TextInputType.text, label: "Anton", prefix: Icons.image, validate: (ss){
                  return null;

                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
