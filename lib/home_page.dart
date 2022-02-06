import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  HomePage();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
   /*  appBar: AppBar(
       title: Text("Home Page"),
     ),*/
     body: Container(
       child: ListView.builder(
         itemBuilder: (BuildContext context, int position){
           return ListTile(
             title: Text("User $position"),
             leading: Icon(Icons.account_circle),
           );
         },
         itemCount: 10,

       )
     ),
   );
  }

}