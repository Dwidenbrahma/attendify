import 'package:attendify/screens/login_screen.dart';
import 'package:attendify/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:attendify/constant.dart';
import 'package:google_fonts/google_fonts.dart';

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
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/homepage.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    'Welcome to ',
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Color(0xFF000957),
                      fontFamily: 'Roboto',
                    ),
                  ),
                  Text(
                    'Attendify',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Color(0xFF000957),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: 150.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(10.0),
                        backgroundColor: Color(0xFF000000),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10), // Button border radius (rounded corners)
                        ),
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                  width: 150.0,
                    child: ElevatedButton(
                      
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(10.0),
                        backgroundColor: Color(0xFF000000),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10), // Button border radius (rounded corners)
                        ),
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
