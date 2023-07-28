import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Center(
          child: Text(
            'DICE GAME',
          ),
        ),
      ),
      body: DiceApp(),
    ),
  ),
  );
}

class DiceApp extends StatefulWidget {

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  var lDiceNumber = 1;
  var rDiceNumber = 2;
  void changeDice(){
    setState(() {
    lDiceNumber = Random().nextInt(6)+1;
      rDiceNumber = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
                onPressed: (){
                changeDice();

                },
                child: Image.asset("images/dice$lDiceNumber.png"
                )
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: (){
                changeDice();
              },
              child: Image.asset("images/dice$rDiceNumber.png"
              ),
            ),
          ),
        ],
      ),
    );
  }
}



