import 'package:flutter/material.dart';
import './pages/login_page.dart';
import './pages/login_private.dart';
import './pages/home_page.dart';

void main(){
  runApp(new MaterialApp(
    title: "My First Flutter App",
    // theme: new ThemeData(
    //   brightness: Brightness.dark,
    //   primaryColor: Colors.lightBlue[800],
    //   accentColor: Colors.lightBlue[600],
    // ),
    home: new LogInPage(),
    routes: <String, WidgetBuilder>{
      "/privateLogin": (BuildContext context) => new PrivateLogin(),
      "/homePage": (BuildContext context) => new HomePage(),
    },
  ));
}