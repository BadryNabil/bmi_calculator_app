import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;

   BmiResultScreen({
     this.result, 
     this.isMale, 
     this.age
    });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Bmi Result"),
      ),
      body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
          Text(
            "Gender : ${isMale ? "Male" : "female"}",
            style:TextStyle(
              fontSize:25.0,
              fontWeight:FontWeight.bold,
            ),
          ),
          Text(
            "Result : $result",
            style:TextStyle(
              fontSize:25.0,
              fontWeight:FontWeight.bold,
            ),
          ),
          Text(
            "Age : $age",
            style:TextStyle(
              fontSize:25.0,
              fontWeight:FontWeight.bold,
            ),
          ),
        ],)
      ),
    );
  }
}