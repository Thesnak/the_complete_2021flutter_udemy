import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
final int result;
final bool isMale;
final int age;

  const BmiResultScreen({
    @required this.result,
    @required this.isMale,
    @required this.age,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        centerTitle: true, 
        leading: IconButton(
      icon: Icon(Icons.keyboard_arrow_left),
      color: Colors.white, onPressed: () {  
        Navigator.pop(context);
        },
    ),
        title: Text(
          "BMI Calculator Result",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
            Text(
              "Gender : ${isMale ? 'Male':'Female'}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.white,
              ),
            ),
             Text(
               "Result : $result",
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 25.0,
                 color: Colors.white,
               ),
             ),
             Text(
               "Age : $age",
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 25.0,
                 color: Colors.white,
               ),
             ),
          ],
        ),
      ),
    );
  }
}
