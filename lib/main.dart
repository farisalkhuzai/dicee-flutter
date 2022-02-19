import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {


  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int liftDiceNumber = 1;
  int rightDiceNumber = 1;
  void changeDiceFace(){
    setState(() {
      liftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$liftDiceNumber.png'),
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(16.0),
              ),
              onPressed: () {
                changeDiceFace();
                },
            ),
          ),
          Expanded(
            child: TextButton(child: Image.asset('images/dice$rightDiceNumber.png'),
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(16.0),

              ),
              onPressed: () {
                changeDiceFace();
              },
            ),
          )
        ],
      ),
    );
  }
}

// int generateRandomNumber(int num){
//   return Random().nextInt(6) + 1;
//
// }



