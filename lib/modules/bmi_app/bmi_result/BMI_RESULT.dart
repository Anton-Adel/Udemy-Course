import 'package:flutter/material.dart';
class BMI_Result extends StatelessWidget {

   final double result;
   final int age;
   final bool isMale;
   BMI_Result({
     required this.result,
     required this.age,
     required this.isMale,
});




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result",
        style: TextStyle(fontSize: 20,
        fontWeight: FontWeight.bold
        ),
        ),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Gender: ${isMale?"Male":"Female"}",
            style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.bold
            ),
            ),
            Text("age: $age",
              style: TextStyle(fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text("Result: ${result.round()}",
              style: TextStyle(fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),

          ],


        ),
      ),
    );
  }
}
