import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body:   DiceApp()
      ),
    )
  );
}

class DiceApp extends StatefulWidget {

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {

  int gaucheDiceNumber=1;
  int droiteDiceNumber=2;

  void changement(){
    setState(() {
      gaucheDiceNumber=Random().nextInt(6)+1;
      droiteDiceNumber=Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context){
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(

                onPressed: () {
                  changement();
                },
              child: Image.asset('images/dice$gaucheDiceNumber.png'),
              ),
          ),
          Expanded(
              child: TextButton(onPressed: (){
                changement();
              },
                  child: Image.asset('images/dice$droiteDiceNumber.png'),
              ),
          ),
        ],
      ),
    );
  }
}

