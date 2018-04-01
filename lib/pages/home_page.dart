import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return new Material(
       color: Colors.white,
       child: new InkWell(
         child: new Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             new Text("Home Page!", style: new TextStyle(color: Colors.blueAccent, fontSize: 30.0),),
             new RaisedButton(
               color: Colors.blueAccent,
               child: new Text("Back to LogIn Page", style: new TextStyle(color: Colors.white)),
               onPressed: (){
                 Navigator.of(context).pushNamed("/");
                 print("Logged Out");
               },
               
             ) 
           ],
         ),
       ), 
    );
  }
}