import 'package:flutter/material.dart';

class AttendifyHomeScreen extends StatefulWidget {
  static const id = 'attendify_home_screen';
  const AttendifyHomeScreen({super.key});

  @override
  State<AttendifyHomeScreen> createState() => _AttendifyHomeScreenState();
}

class _AttendifyHomeScreenState extends State<AttendifyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Dwiden Brahma',
            style: TextStyle(
              fontSize: 21.0,
              fontFamily: 'Robot',
            ),
          ),
          backgroundColor: Color(0xFFEEEDEB),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.person),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.dark_mode),
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFEEEDEB),
                Color(0xFFE7E8D8)
              ], // Define the colors of the gradient
              begin: Alignment.topLeft, // The start point of the gradient
              end: Alignment.bottomCenter, // The end point of the gradient
            ),
          ),
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(2.0, 0.0, 1.0, 0.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color(0xFF77E4C8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 110.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFF96E2A),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          )
                        ),
                        child: Text(
                          'text1',
                          style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 18.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 110.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFF96E2A),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            )
                        ),
                        child: Text(
                          'text1',
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 110.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFF96E2A),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),

                        ),
                        child: Text(
                          'text1',
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
