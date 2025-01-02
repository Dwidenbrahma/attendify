import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Attendify",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Text('Attendify'),
    ),
  ));
}

class Attendify extends StatefulWidget {
  const Attendify({super.key});

  @override
  State<Attendify> createState() => _AttendifyState();
}

class _AttendifyState extends State<Attendify> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
