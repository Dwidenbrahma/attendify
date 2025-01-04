import 'package:flutter/material.dart';


class RegisterScreen extends StatefulWidget {
  static const id = 'register_screen';
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Registration Screen'),
    );
  }
}
