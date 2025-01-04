import 'package:attendify/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  static const id = 'login_screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String password = '';
  String email = '';
  bool isClicked = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          // Wrap the entire body in SingleChildScrollView
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(13.0),
                decoration: BoxDecoration(
                  color: Color(0xFFDA938B),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0), // Top-left corner rounded
                    topRight: Radius.circular(10.0),
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.cover,
                    width: 200.0,
                    height:
                        250.0, // Ensures the image fills the space without distortion
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Text(
                  'Sign in',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 40.0,
                    fontFamily: 'Pacifico',
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                    child: TextField(
                      onChanged: (value) {
                        email = value;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.email_sharp,
                          color: Colors.deepOrangeAccent,
                        ),
                        hintText: 'Email',
                        contentPadding: EdgeInsets.all(8.0), // Adjusts height
                      ),
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                    child: TextField(
                      obscureText: isClicked,
                      onChanged: (value) {
                        password = value;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.deepOrangeAccent,
                        ),
                        hintText: 'Password',
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isClicked = isClicked ? false : true;
                            });
                          },
                          icon: Icon(Icons.remove_red_eye),
                        ),
                        contentPadding: EdgeInsets.all(8.0), // Adjusts height
                      ),
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('$password: $email');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      foregroundColor: Colors.white,
                      fixedSize: Size(328.0, 50.0),
                      textStyle: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w900),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            7.0), // Adjust the radius here
                      ),
                    ),
                    child: Text('Login'),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Don\'t have an Account ?',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
              ),
            ),
            TextButton(
              onPressed: () {

                Navigator.pushNamed(context, RegisterScreen.id);
              },
              child: Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 18.0,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
