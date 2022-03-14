import 'package:first/models/user/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class users extends StatelessWidget {
  @override
 List <model> user=[
   model(name: "Anton Adel Fanous", number: "01276146114"),
    model(name: "tony ", number: "01276146114"),
    model(name: "Ahmed Mohamed ", number: "01276146114"),
    model(name: "Adel Fanous", number: "01276146114"),
    model(name: "Anton Adel ", number: "01276146114"),
    model(name: "Anton Adel Fanous", number: "01276146114"),
    model(name: "tony ", number: "01276146114"),
    model(name: "Ahmed Mohamed ", number: "01276146114"),
    model(name: "Adel Fanous", number: "01276146114"),
    model(name: "Anton Adel ", number: "01276146114"),
    model(name: "Anton Adel Fanous", number: "01276146114"),
    model(name: "tony ", number: "01276146114"),
    model(name: "Ahmed Mohamed ", number: "01276146114"),
    model(name: "Adel Fanous", number: "01276146114"),
    model(name: "Anton Adel ", number: "01276146114"),
    model(name: "Anton Adel Fanous", number: "01276146114"),
    model(name: "tony ", number: "01276146114"),
    model(name: "Ahmed Mohamed ", number: "01276146114"),
    model(name: "Adel Fanous", number: "01276146114"),
    model(name: "Anton Adel ", number: "01276146114"),
    model(name: "Anton Adel Fanous", number: "01276146114"),
    model(name: "tony ", number: "01276146114"),
    model(name: "Ahmed Mohamed ", number: "01276146114"),
    model(name: "Adel Fanous", number: "01276146114"),
    model(name: "Anton Adel ", number: "01276146114"),
    model(name: "Anton Adel Fanous", number: "01276146114"),
    model(name: "tony ", number: "01276146114"),
    model(name: "Ahmed Mohamed ", number: "01276146114"),
    model(name: "Adel Fanous", number: "01276146114"),
    model(name: "Anton Adel ", number: "01276146114"),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users",
        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
        ),
      ),
      body:
        Padding(
          padding: const EdgeInsets.all(16),
          child: ListView.separated(
              itemBuilder: (context,index)=>use(index),
              separatorBuilder: (context,index)=>SizedBox(
                height: 20,

              ),
              itemCount: 30),

        ),
        



    );

  }

  Widget use(int index) => Column(
  children: [
  Row(
  children: [
  CircleAvatar(
  radius: 30,
  child: Text("$index",
  style: TextStyle(fontSize: 30),
  ),


  ),
  SizedBox(
  width: 20,
  ),
  Expanded(
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,

  children: [
  Text("${user[index].name}",
  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
  maxLines: 1,
  overflow: TextOverflow.ellipsis,
  ),
  Text("${user[index].number}",
  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),

  ),


  ],


  ),
  ),
  ],


  ),




  ],


  );
  
}
