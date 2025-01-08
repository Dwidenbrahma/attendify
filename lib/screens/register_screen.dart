import 'package:attendify/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:attendify/constant.dart';

class RegisterScreen extends StatefulWidget {
  static const id = 'register_screen';
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isClicked = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),

            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(24.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color(0xFF000000)
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Welcome Attendify',
                        style: TextStyle(
                          fontSize: 34.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white

                        ),

                      ),
                      Text(
                        'Your Gateway to smarter attendance management starts here !',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Robot',
                          color: Colors.white,
                        ),

                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  width: double.infinity,
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'First Name',
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xFF3E7B27),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  width: double.infinity,
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Email',
                        prefixIcon: Icon(
                          Icons.email_sharp,
                          color: Color(0xFF3E7B27),
                        )),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  width: double.infinity,
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Phone',
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Color(0xFF3E7B27),
                        )),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  width: double.infinity,
                  child: TextField(
                    obscureText: isClicked,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color(0xFF3E7B27),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isClicked = isClicked ? false : true;
                          });
                        },
                        icon: Icon(Icons.remove_red_eye),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF3D3D3D),
                        fixedSize: Size(double.maxFinite, 50.0),
                        textStyle:
                            TextStyle(fontSize: 17.0, fontFamily: 'Robot'),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                    child: Text(
                      'Sign up',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Already Registered ?',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, LoginScreen.id);
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
