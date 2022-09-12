import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
    appBar: AppBar(
title: Text('Dicee'),
centerTitle: true,
backgroundColor: Colors.green,
),
backgroundColor: Colors.red,
body: DiceBar()),
);
}
  }


class DiceBar extends StatefulWidget {
  const DiceBar({Key? key}) : super(key: key);
  @override
  State<DiceBar> createState() => _DiceBarState();
}
class _DiceBarState extends State<DiceBar> {
  @override
  int leftdiceimage=1;
  int rightdiceimage=1;
  Widget build(BuildContext context) {
    return  Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton( onPressed: () {
                setState(() {
                  leftdiceimage = Random().nextInt(5)+1;
                  rightdiceimage=Random().nextInt(6)+1;
                });
              }
                ,  child: Image.asset(
                    'images/dice$leftdiceimage.jpg'),),
            ),),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed:(){
                  setState(() {
                    rightdiceimage=Random().nextInt(6)+1;
                  });
                },
                child: Image.asset(
                    'images/dice$rightdiceimage.jpg'),
              ),
            ),
          ),
        ],
      ),);
  }
  }

