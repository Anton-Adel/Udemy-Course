import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ),
        title: Text('First App'),
        actions: [
          IconButton(
            onPressed: () {
              print("hiiiiiii");
            },
            icon: Icon(
              Icons.search,
            ),
          ),
          IconButton(
              onPressed: () {
                print("Hellllow");
              },
              icon: Icon(
                Icons.delete,
              )),
        ],
        centerTitle: true,
        
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(start:8.0,
            top: 3
            ),
            child: Container(
              decoration: BoxDecoration(

                borderRadius: BorderRadiusDirectional.only(
                  topStart:Radius.circular(20)


                ),
              ),

              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image(height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://www.thespruce.com/thmb/zcpzcdWmGGSBnIynB1riWYuNdRM=/2098x1429/filters:fill(auto,1)/purple-hydrangea-bloom-closeup-big-5a68ffd81d6404001a9204b0.jpg'
                  ),
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.7),
                     width: 200,
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,


                    ),
                    child: Text('Flower',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20,color: Colors.white),
                    ),
                  ),

                ],
              ),
            ),
          )

        ],
          ),
        );

  }
}
