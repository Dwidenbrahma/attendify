import 'package:flutter/material.dart';
import 'package:attendify/screens/login_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: LoginScreen(),
    ),
  ));
}

// class Attendify extends StatefulWidget {
//   const Attendify({super.key});
//
//   @override
//   State<Attendify> createState() => _AttendifyState();
// }
//
// class _AttendifyState extends State<Attendify> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
