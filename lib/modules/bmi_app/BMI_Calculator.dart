
import 'dart:math';

import 'package:first/modules/bmi_app/bmi_result/BMI_RESULT.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  _calculatorState createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  bool isMale=true;
  double height=180.0;
  int weight=70;
  int age=20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.redAccent.withOpacity(0.5),

        title: Center(child: Text("BMI_Calculator")),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=true;
                        });
                      },
                      child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: isMale?Colors.blue[800] :Colors.grey[800]
                      ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage("assets/images/male.png"),
                            width: 90,
                              height: 90,
                            ),
                            Text("MALE",
                            style: TextStyle(fontSize: 30),

                            ),

                          ],

                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,

                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isMale?Colors.grey[800] :Colors.blue[800]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage("assets/images/female.png"),
                              width: 90,
                              height: 90,
                            ),
                            Text("FEMALE",
                              style: TextStyle(fontSize: 30),

                            ),

                          ],

                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[800],

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("HEIGHt",
                    style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic ,
                      children: [
                        Text("${height.round()}",
                          style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
                        ),
                        Text("CM",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    Slider(value: height,
                        max: 220,
                        min: 120
                        , onChanged: (value){
                     setState(() {
                       height= value;
                     });
                        })

                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child:
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[800],

                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("WEIGHT",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text("$weight",
                              style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                  heroTag: "weight--",
                                child: Icon(Icons.remove),
                                  mini: true,
                                ),
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                  heroTag: "weight++",
                                  child: Icon(Icons.add),
                                  mini: true,
                                )
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[800],

                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("AGE",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text("$age",
                              style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                  heroTag: "age--",
                                  child: Icon(Icons.remove),
                                  mini: true,
                                ),
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                  heroTag: "age++",
                                  child: Icon(Icons.add),
                                  mini: true,
                                )
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

          ),
          Container(
            width: double.infinity,
            color: Colors.deepOrange.withOpacity(0.3),

            child: MaterialButton(onPressed:(){
              var result=weight/pow(height/100, 2);
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=>BMI_Result(
                age: age,
                result: result,
                isMale: isMale,
              ))
              );

            },
              child: Text("CALCULATE",
              style: TextStyle(color: Colors.white,fontSize: 20),

              ),
              // child: Text("CALCULATE",
              //   style: TextStyle(color: Colors.white,fontSize: 20),
              //
              // ),
            ),
          )
        ],
      ),
    );
  }
}
