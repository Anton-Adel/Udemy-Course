import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MassengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  'https://scontent.fcai22-1.fna.fbcdn.net/v/t1.6435-9/197046348_2879622868916360_9075430938677948048_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=LUIEOCHU1-MAX_5Za4-&_nc_ht=scontent.fcai22-1.fna&oh=7661b87dd11f48ba53b63a9ec02a4d47&oe=618EE9FA'),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Chats',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
              )),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ))
        ],
        titleSpacing: 20,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300]),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 15,
                  ),
                  Text('Search'),
                ],
              ),
            ),
            SizedBox(
              height: 20,

            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://scontent.fcai22-2.fna.fbcdn.net/v/t1.6435-9/197046348_2879622868916360_9075430938677948048_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=kJUir9URPMYAX-ZSPhF&_nc_ht=scontent.fcai22-2.fna&oh=00_AT8Fi0r2fwFKFVHN9zmu7B8naQ_1VfRZDT0UmoN8r0HLCg&oe=622534FA'),

                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 4,
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Anton Adel Fanous',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,


                        ),




                      ],

                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://scontent.fcai22-2.fna.fbcdn.net/v/t1.6435-9/197046348_2879622868916360_9075430938677948048_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=kJUir9URPMYAX-ZSPhF&_nc_ht=scontent.fcai22-2.fna&oh=00_AT8Fi0r2fwFKFVHN9zmu7B8naQ_1VfRZDT0UmoN8r0HLCg&oe=622534FA'),

                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 4,
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Anton Adel Fanous',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,


                        ),




                      ],

                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://scontent.fcai22-2.fna.fbcdn.net/v/t1.6435-9/197046348_2879622868916360_9075430938677948048_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=kJUir9URPMYAX-ZSPhF&_nc_ht=scontent.fcai22-2.fna&oh=00_AT8Fi0r2fwFKFVHN9zmu7B8naQ_1VfRZDT0UmoN8r0HLCg&oe=622534FA'),

                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 4,
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Anton Adel Fanous',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,


                        ),




                      ],

                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://scontent.fcai22-1.fna.fbcdn.net/v/t1.6435-9/197046348_2879622868916360_9075430938677948048_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=LUIEOCHU1-MAX_5Za4-&_nc_ht=scontent.fcai22-1.fna&oh=7661b87dd11f48ba53b63a9ec02a4d47&oe=618EE9FA'),

                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 4,
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Anton Adel Fanous',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,


                        ),




                      ],

                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://scontent.fcai22-1.fna.fbcdn.net/v/t1.6435-9/197046348_2879622868916360_9075430938677948048_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=LUIEOCHU1-MAX_5Za4-&_nc_ht=scontent.fcai22-1.fna&oh=7661b87dd11f48ba53b63a9ec02a4d47&oe=618EE9FA'),

                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 4,
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Anton Adel Fanous',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,


                        ),




                      ],

                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://scontent.fcai22-1.fna.fbcdn.net/v/t1.6435-9/197046348_2879622868916360_9075430938677948048_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=LUIEOCHU1-MAX_5Za4-&_nc_ht=scontent.fcai22-1.fna&oh=7661b87dd11f48ba53b63a9ec02a4d47&oe=618EE9FA'),

                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 4,
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Anton Adel Fanous',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,


                        ),




                      ],

                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://scontent.fcai22-1.fna.fbcdn.net/v/t1.6435-9/197046348_2879622868916360_9075430938677948048_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=LUIEOCHU1-MAX_5Za4-&_nc_ht=scontent.fcai22-1.fna&oh=7661b87dd11f48ba53b63a9ec02a4d47&oe=618EE9FA'),

                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 4,
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Anton Adel Fanous',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,


                        ),




                      ],

                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://scontent.fcai22-1.fna.fbcdn.net/v/t1.6435-9/197046348_2879622868916360_9075430938677948048_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=LUIEOCHU1-MAX_5Za4-&_nc_ht=scontent.fcai22-1.fna&oh=7661b87dd11f48ba53b63a9ec02a4d47&oe=618EE9FA'),

                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 4,
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Anton Adel Fanous',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,


                        ),




                      ],

                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(

                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://scontent.fcai22-2.fna.fbcdn.net/v/t1.6435-9/197046348_2879622868916360_9075430938677948048_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=kJUir9URPMYAX-ZSPhF&_nc_ht=scontent.fcai22-2.fna&oh=00_AT8Fi0r2fwFKFVHN9zmu7B8naQ_1VfRZDT0UmoN8r0HLCg&oe=622534FA'),

                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 4,
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start ,
                            children: [
                              Text(
                                'Anton Adel Fanous',
                                style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.bold),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 10,

                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hello my name is anton adel fanous... How are you?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                    child: Container(
                                      width: 5,
                                      height: 5,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                       color: Colors.blue,


                                      ),


                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(

                                    '2.00 pm'
                                  ),

                                ],
                              ),


                            ],

                          ),
                        )


                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(

                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://scontent.fcai22-1.fna.fbcdn.net/v/t1.6435-9/197046348_2879622868916360_9075430938677948048_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=LUIEOCHU1-MAX_5Za4-&_nc_ht=scontent.fcai22-1.fna&oh=7661b87dd11f48ba53b63a9ec02a4d47&oe=618EE9FA'),

                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 4,
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start ,
                            children: [
                              Text(
                                'Anton Adel Fanous',
                                style: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 10,

                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hello my name is anton adel fanous... How are you?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                    child: Container(
                                      width: 5,
                                      height: 5,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,


                                      ),


                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(

                                      '2.00 pm'
                                  ),

                                ],
                              ),


                            ],

                          ),
                        )


                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(

                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://scontent.fcai22-1.fna.fbcdn.net/v/t1.6435-9/197046348_2879622868916360_9075430938677948048_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=LUIEOCHU1-MAX_5Za4-&_nc_ht=scontent.fcai22-1.fna&oh=7661b87dd11f48ba53b63a9ec02a4d47&oe=618EE9FA'),

                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 4,
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start ,
                            children: [
                              Text(
                                'Anton Adel Fanous',
                                style: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 10,

                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hello my name is anton adel fanous... How are you?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                    child: Container(
                                      width: 5,
                                      height: 5,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,


                                      ),


                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(

                                      '2.00 pm'
                                  ),

                                ],
                              ),


                            ],

                          ),
                        )


                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(

                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://scontent.fcai22-1.fna.fbcdn.net/v/t1.6435-9/197046348_2879622868916360_9075430938677948048_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=LUIEOCHU1-MAX_5Za4-&_nc_ht=scontent.fcai22-1.fna&oh=7661b87dd11f48ba53b63a9ec02a4d47&oe=618EE9FA'),

                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 4,
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start ,
                            children: [
                              Text(
                                'Anton Adel Fanous',
                                style: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 10,

                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hello my name is anton adel fanous... How are you?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                    child: Container(
                                      width: 5,
                                      height: 5,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,


                                      ),


                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(

                                      '2.00 pm'
                                  ),

                                ],
                              ),


                            ],

                          ),
                        )


                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(

                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://scontent.fcai22-1.fna.fbcdn.net/v/t1.6435-9/197046348_2879622868916360_9075430938677948048_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=LUIEOCHU1-MAX_5Za4-&_nc_ht=scontent.fcai22-1.fna&oh=7661b87dd11f48ba53b63a9ec02a4d47&oe=618EE9FA'),

                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 4,
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start ,
                            children: [
                              Text(
                                'Anton Adel Fanous',
                                style: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 10,

                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hello my name is anton adel fanous... How are you?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                    child: Container(
                                      width: 5,
                                      height: 5,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,


                                      ),


                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(

                                      '2.00 pm'
                                  ),

                                ],
                              ),


                            ],

                          ),
                        )


                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(

                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://scontent.fcai22-1.fna.fbcdn.net/v/t1.6435-9/197046348_2879622868916360_9075430938677948048_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=LUIEOCHU1-MAX_5Za4-&_nc_ht=scontent.fcai22-1.fna&oh=7661b87dd11f48ba53b63a9ec02a4d47&oe=618EE9FA'),

                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 4,
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start ,
                            children: [
                              Text(
                                'Anton Adel Fanous',
                                style: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 10,

                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hello my name is anton adel fanous... How are you?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                    child: Container(
                                      width: 5,
                                      height: 5,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,


                                      ),


                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(

                                      '2.00 pm'
                                  ),

                                ],
                              ),


                            ],

                          ),
                        )


                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(

                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://scontent.fcai22-1.fna.fbcdn.net/v/t1.6435-9/197046348_2879622868916360_9075430938677948048_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=LUIEOCHU1-MAX_5Za4-&_nc_ht=scontent.fcai22-1.fna&oh=7661b87dd11f48ba53b63a9ec02a4d47&oe=618EE9FA'),

                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 4,
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start ,
                            children: [
                              Text(
                                'Anton Adel Fanous',
                                style: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 10,

                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hello my name is anton adel fanous... How are you?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                    child: Container(
                                      width: 5,
                                      height: 5,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,


                                      ),


                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(

                                      '2.00 pm'
                                  ),

                                ],
                              ),


                            ],

                          ),
                        )


                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(

                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://scontent.fcai22-1.fna.fbcdn.net/v/t1.6435-9/197046348_2879622868916360_9075430938677948048_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=LUIEOCHU1-MAX_5Za4-&_nc_ht=scontent.fcai22-1.fna&oh=7661b87dd11f48ba53b63a9ec02a4d47&oe=618EE9FA'),

                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 4,
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start ,
                            children: [
                              Text(
                                'Anton Adel Fanous',
                                style: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 10,

                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hello my name is anton adel fanous... How are you?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                    child: Container(
                                      width: 5,
                                      height: 5,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,


                                      ),


                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(

                                      '2.00 pm'
                                  ),

                                ],
                              ),


                            ],

                          ),
                        )


                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),




          ],
        ),
      ),
    );
  }

}
