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
             Container(height: 100,width: 100,color: Colors.grey,margin: EdgeInsets.all(10),child: Center(child: Text("1st semester"),),),
             Container(height: 100,width: 100,color: Colors.grey,margin: EdgeInsets.all(10),child: Center(child: Text("2nd Semester"),),),
             Container(height: 100,width: 100,color: Colors.grey,margin: EdgeInsets.all(10),child: Center(child: Text("3rd Semester"),),),
             Container(height: 100,width: 100,color: Colors.grey,margin: EdgeInsets.all(10),child: Center(child: Text("4th Semester"),),),
           ],
         )
       );
  }
}