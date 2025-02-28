import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});


  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      );
  }

}

class HomePage extends StatelessWidget{
  const HomePage({super.key});
  
  MySnackBar(context,message){
     return ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content:Text(message))
    );
  }

    MyalertDialog(context){
      return showDialog(
          context: context,
          builder: (BuildContext context) {
              return Expanded(
                  child: AlertDialog(
                    title: const Text("Alert!"),
                    content: const Text("Do you want to delete?"),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.of(context).pop();
                        MySnackBar(context, "Delete success");
                        }, child:const Text("Yes")),
                      TextButton(onPressed: (){Navigator.of(context).pop();}, child:const Text("No"))
                    ],
                  )
              );

          }
      );
      }



  @override
  Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           title: Text("Inventory App"),
           backgroundColor: Colors.lightGreen,
           elevation: 60,
         ),

         body:Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             // Container(height: 100,width: 100,color: Colors.grey,margin: EdgeInsets.all(10),child: Center(child: Text("1st semester"),),),
             // Container(height: 100,width: 100,color: Colors.grey,margin: EdgeInsets.all(10),child: Center(child: Text("2nd Semester"),),),
             // Container(height: 100,width: 100,color: Colors.grey,margin: EdgeInsets.all(10),child: Center(child: Text("3rd Semester"),),),
             // Container(height: 100,width: 100,color: Colors.grey,margin: EdgeInsets.all(10),child: Center(child: Text("4th Semester"),),),
             Padding(padding: EdgeInsets.all(10),child: ElevatedButton(onPressed: (){MyalertDialog(context);}, child:Text("click me")),)
           ],
         )
       );
  }
}