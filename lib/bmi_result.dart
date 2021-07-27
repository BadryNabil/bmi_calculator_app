import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Bmi Result"),
      ),
      body: Center(
       child: Column(children: [
          Text(
            "Gender : Male",
            style:TextStyle(
              fontSize:25.0,
              fontWeight:FontWeight.bold,
            ),
          ),
          Text(
            "Result : 55",
            style:TextStyle(
              fontSize:25.0,
              fontWeight:FontWeight.bold,
            ),
          ),
          Text(
            "Age : 20",
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