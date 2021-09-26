import 'package:flutter/material.dart';
import 'package:the_complete_2021flutter_udemy/models/bmi_result/bmi_result_screen.dart';
import 'package:the_complete_2021flutter_udemy/models/bmi/bmi_screen.dart';
import 'package:the_complete_2021flutter_udemy/models/home/home_screen.dart';
import 'package:the_complete_2021flutter_udemy/models/login/login_screen.dart';
import 'package:the_complete_2021flutter_udemy/models/messanger/messanger_screen.dart';

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
      home: LoginScreen(),
    );

  }
}
