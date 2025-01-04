import 'package:attendify/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:attendify/screens/login_screen.dart';
import 'package:attendify/screens/home_screen.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Attendify.id,
    routes: {
      Attendify.id:(context)=>Attendify(),
      LoginScreen.id :(context)=>LoginScreen(),
      RegisterScreen.id:(context)=>RegisterScreen(),
    },
  ),);
}


