import 'package:attendify/screens/login_screen.dart';
import 'package:attendify/screens/register_screen.dart';
import 'package:flutter/material.dart';

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
              child: Text(
                'Login',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, RegisterScreen.id);
              },
              child: Text(
                'Register',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
