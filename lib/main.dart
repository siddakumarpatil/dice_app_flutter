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
  int lnum=5;
  int rnum=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  lnum=Random().nextInt(6)+1;
                });
              },
              child: Image(
                image: AssetImage('images/dice$lnum.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  rnum=Random().nextInt(6)+1;
                });
              },
              child: Image(
                image: AssetImage('images/dice$rnum.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

