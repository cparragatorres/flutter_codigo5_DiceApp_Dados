import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int LeftDice = 2;
  int RightDice = 3;

  @override
  Widget build(BuildContext context) {
    print("METODO BUILD !!!!!!!!!!!!!");
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("DiceApp"),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  LeftDice = Random().nextInt(6) + 1;
                  RightDice = Random().nextInt(6) + 1;
                  setState(() {});
                },
                child: Image.asset(
                  "assets/dice$LeftDice.png",
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  LeftDice = Random().nextInt(6) + 1;
                  RightDice = Random().nextInt(6) + 1;
                  setState(() {});
                },
                child: Image.asset(
                  "assets/dice$RightDice.png",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
