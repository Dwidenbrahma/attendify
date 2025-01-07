import 'package:attendify/screens/login_screen.dart';
import 'package:attendify/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:animated_text_kit/animated_text_kit.dart';

class Attendify extends StatefulWidget {
  static const id = 'home_screen';
  const Attendify({super.key});

  @override
  State<Attendify> createState() => _AttendifyState();
}

class _AttendifyState extends State<Attendify> {
  List<String> sentences = [
    "The world feels alive and bright, just like this moment.",
    "Life feels hopeful and promising, just like this sunrise.",
    "The air feels calm and soothing, just like this evening.",
    "The journey feels steady and purposeful, just like this step.",
    "The future feels open and limitless, just like the horizon.",
    "Friendship feels warm and comforting, just like this embrace.",
    "The day feels vibrant and full, just like this smile.",
    "Success feels within reach, just like this effort.",
    "The universe feels vast and mysterious, just like the night sky.",
    "Kindness feels simple and powerful, just like this gesture."
  ];
  String showQuote = '';

  @override
  void initState() {
    super.initState();
    Random random = Random();

    int randIndex = random.nextInt(sentences.length - 1);
    showQuote = sentences[randIndex];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/homepage.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    '"${showQuote.toUpperCase()}"',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Color(0xFF3D3D3D),
                      fontFamily: 'Robot',
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.center,
                    textWidthBasis: TextWidthBasis.longestLine,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(
                    child: Text(
                      'Attendify',
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  SizedBox(
                    width: 320.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(10.0),
                        backgroundColor: Color(0xFF000000),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              20.0), // Button border radius (rounded corners)
                        ),
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontFamily: 'Robot',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    width: 320.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(10.0),
                        backgroundColor: Color(0xFF000000),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              20.0), // Button border radius (rounded corners)
                        ),
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontFamily: 'Robot',
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
