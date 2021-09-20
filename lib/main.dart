import 'package:flutter/material.dart';
import 'package:the_complete_2021flutter_udemy/home_screen.dart';
import 'package:the_complete_2021flutter_udemy/login_screen.dart';
import 'package:the_complete_2021flutter_udemy/messanger_screen.dart';

void main() {
  runApp(MyApp());
}

//Stateless

//StateFul

// class MyApp

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MessengerScreen(),
    );

  }
}
