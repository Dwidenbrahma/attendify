import 'package:attendify/screens/login_screen.dart';
import 'package:attendify/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:attendify/constant.dart';

class Attendify extends StatefulWidget {
  static const id = 'home_screen';
  const Attendify({super.key});

  @override
  State<Attendify> createState() => _AttendifyState();
}

class _AttendifyState extends State<Attendify> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/homepage.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(),
        ),
      ),
    );
  }
}
