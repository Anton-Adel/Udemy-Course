
import 'package:first/layout/news/cubit/cubit.dart';
import 'package:first/layout/news/cubit/states.dart';
import 'package:first/modules/web_view/NewsWebView.dart';
import 'package:first/shared/cubit/cubit.dart';
import 'package:first/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

Widget defaultButton({
  double? width=double.infinity,
  Color background= Colors.grey,
  bool? upper=true,
  double radius=0.0,
  required Function function,
  required String text,
}) => Container(
width: width,
decoration: BoxDecoration
  (
  borderRadius: BorderRadius.circular(radius),
  color:background,
),
child: MaterialButton(onPressed:(){
function();
},
  height: 30,
child: Text(
  upper!?text.toUpperCase():text,
style: TextStyle(fontSize: 20,
color: Colors.white
),
),
),
);





Widget DefaultTextFeild({
   required TextEditingController controller,
   required TextInputType type,
  bool password=false,
  required String label,
  required IconData prefix,
  Function? onchange,
  Function? ontap,
   IconButton? suffix,
  required FormFieldValidator validate,
})=> TextFormField(
  controller: controller,
  keyboardType: type,
  obscureText: password,
  decoration: InputDecoration(
      labelText: label,
      prefixIcon: Icon(prefix),
      suffixIcon: suffix,
      border: OutlineInputBorder(),
  ),
  validator: validate,
  onChanged: (value){
    onchange!(value);
  },
  onTap: (){
   ontap!();
  },

);




Widget ToDoTasks(Map task,context){
  return Dismissible(
    key: ValueKey(task['id'].toString()),
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40.0,
            child: Text("${task['time']}"),
          ),
          SizedBox(width: 15,),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("${task['title']}",
                  style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),

                ),
                Text("${task['date']}",
                  style: TextStyle(
                      color: Colors.grey
                  ),

                )

              ],
            ),

          ),
          SizedBox(width: 15,),
          IconButton(onPressed: (){
            TodoCubit.get(context).update("done", task['id']);
          },
              icon:Icon(Icons.check_box),
            color: task['status']=='done'? Colors.green:Colors.black87,
          ),
          SizedBox(width: 15,),
          IconButton(onPressed: (){
            TodoCubit.get(context).update("archived", task['id']);
          },
              icon:Icon(Icons.archive),
            color: task['status']=='archived'? Colors.green:Colors.black87,
          )
        ],
      ),
    ),
    background: Container(
      color: Colors.red,
      child: Center(child: Icon(Icons.cancel)),
    ),
    secondaryBackground: Container(
      color: Colors.red,
      child: Center(child: Icon(Icons.cancel)),
    ),


    onDismissed: (direction){
      TodoCubit.get(context).delete(task['id']);
    },
  );
}

Widget Task_build(List<Map> task)=>
    task.length>0?
ListView.separated(itemBuilder: (context,index)=>ToDoTasks(task[index],context),
    separatorBuilder: (context,index)=>
       seperator(),
    itemCount: task.length):
Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.list,
        color: Colors.grey,
        size: 60,
      ),
      Text("there is no tasks",
        style: TextStyle(
            fontSize: 30,
            color: Colors.grey
        ),
      )
    ],
  ),
);

Widget seperator()=> Padding(
  padding: const EdgeInsetsDirectional.only(start:20.0),
  child: Container(
    width: double.infinity,
    height: 1,
    color: Colors.grey[300],

  ),
);

Widget News (artical,context)=>InkWell(
  onTap: (){

    navigate(context,  Webview(artical['url']));
  },
  child:   Padding(

    padding: const EdgeInsets.all(20.0),

    child: Row(

      children: [

        Container(

          height: 100,

          width: 100,

          decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(10),

              image: DecorationImage(

                  image: NetworkImage('${artical['urlToImage']}'),

                  fit: BoxFit.cover

              )

          ),

        ),

        SizedBox(width: 20,),

        Expanded(



          child: Container(

            height: 120,

            child: Column(

              mainAxisSize: MainAxisSize.min,

              crossAxisAlignment: CrossAxisAlignment.start,



              children: [

                Expanded(

                  child: Text("${artical['title']}",

                    style: Theme.of(context).textTheme.bodyText1,



                    maxLines: 3,

                    overflow: TextOverflow.ellipsis ,

                  ),

                ),

                Text("${artical["publishedAt"]}",

                  style: TextStyle(

                      fontSize: 18,

                      fontWeight: FontWeight.w500,

                      color: Colors.grey

                  ),



                )



              ],

            ),

          ),

        )



      ],

    ),

  ),
);

Widget NewsArticales(List artical,context,{bool? search=true})=>((artical.length<=0 )& (search==true))? Center(child: CircularProgressIndicator()):
ListView.separated(
    physics: BouncingScrollPhysics(),
    itemBuilder: (context,index)=>News(artical[index],context),
    separatorBuilder: (context,index)=>seperator(), itemCount: artical.length);


void navigate (context,Widget)=>Navigator.push(context,
    MaterialPageRoute(builder: (context)=>Widget)
);


void navigate_replace (context,Widget)=>Navigator.pushReplacement(context,
    MaterialPageRoute(builder: (context)=>Widget
    ),
);


void showTost(String mas,TostStatus state)=> Fluttertoast.showToast(
    msg: mas,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 5,
    backgroundColor: TostColor(state),
    textColor: Colors.white,
    fontSize: 16.0
);

enum TostStatus {SUCCESS,ERROR,WARING}

Color TostColor(TostStatus state){
  Color? c;
  switch(state)
  {
    case TostStatus.SUCCESS:
    c=Colors.green;
      break;
    case TostStatus.ERROR:
    c=Colors.red;
    break;
    case TostStatus.WARING:
    c=Colors.amber;
    break;
  }
  return c;


}