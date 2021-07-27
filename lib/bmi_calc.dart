import 'dart:math';
import 'package:flutter/material.dart';
import 'bmi_result_screen.dart';

class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  double height = 120.0;
  int age = 20;
  int weight = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculater"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage("images/male.png"),
                              width: 90.0,
                              height: 90.0,
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Male",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ]),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: isMale ? Colors.blue : Colors.grey[400],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage("images/female.png"),
                              width: 90.0,
                              height: 90.0,
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Female",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ]),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: isMale ? Colors.grey[400] : Colors.blue,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[400],
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Height",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text("${height.round()}",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                          Text("CM",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Slider(
                          value: height,
                          min: 80.0,
                          max: 220.0,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          }),
                    ]),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Age",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold)),
                            Text("$age",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  heroTag: age++,
                                  mini: true,
                                  child: Icon(Icons.add),
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  heroTag: age--,
                                  mini: true,
                                  child: Icon(Icons.remove),
                                )
                              ],
                            ),
                          ]),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Weight",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold)),
                            Text("$weight",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  heroTag: weight++,
                                  mini: true,
                                  child: Icon(Icons.add),
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  heroTag: weight--,
                                  mini: true,
                                  child: Icon(Icons.remove),
                                )
                              ],
                            ),
                          ]),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.blueAccent,
            child: MaterialButton(
              onPressed: () {
                double result = weight / pow(height / 100, 2);
                Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) =>BmiResultScreen(
                        result:result.round(),
                        age:age,
                        isMale: isMale,
                      ),
                ));
              },
              height: 60,
              child: Text(
                "CALCULATE",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
