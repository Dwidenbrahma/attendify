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
    "The World Feels Alive And Bright, Just Like This Moment.",
    "Life Feels Hopeful And Promising, Just Like This Sunrise.",
    "The Air Feels Calm And Soothing, Just Like This Evening.",
    "The Future Feels Open And Limitless, Just Like The Horizon.",
    "The Day Feels Vibrant And Full, Just Like This Smile.",
    "Success Feels Within Reach, Just Like This Effort.",
    "Kindness Feels Simple And Powerful, Just Like This Gesture."
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
          padding: EdgeInsets.all(50.0),
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
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        '"${showQuote}"',
                        textStyle: TextStyle(
                          fontSize: 28.0,
                          color: Color(0xFF3D3D3D),
                          fontFamily: 'Pacifico',
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic,
                        ),
                        speed: Duration(
                            milliseconds: 100), // Set typing speed here
                      ),
                    ],
                    repeatForever: true,
                    pause: Duration(
                        seconds: 2), // Pause duration between text animations
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
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: 320.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, LoginScreen.id);
                      },
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
                      onPressed: () {
                        Navigator.pushNamed(context, RegisterScreen.id);
                      },
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
