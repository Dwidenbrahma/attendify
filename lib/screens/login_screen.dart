import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  String password = '';
  String email = '';



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Login', style: TextStyle(
              fontFamily: 'sans',
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
              color: Color(0xFF8D0B41),

            ),),
            Container(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                onChanged: (value){
                      email = value;

                },
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                onChanged: (value){
                      password = value;



                },
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
              ),
            ),

            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: () {

                print('$password: $email');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF074799),
                foregroundColor: Colors.white,
                fixedSize: Size(300.0, 60.0),
                textStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w900),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0), // Adjust the radius here
                ),
              ),
              child: Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}
