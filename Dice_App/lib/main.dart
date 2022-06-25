import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Dice App', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),),
          backgroundColor: Colors.blueGrey[700],
        ),
        body: Dice(),
      ),
    ),
  );
}


class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDiceNumber=1;
  int rightDiceNumber=1;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child:FlatButton(onPressed: () {
                setDiceState();
              },
                child: Image.asset('images/dice$leftDiceNumber.png'),),
            ),
            Expanded(
              child:FlatButton(onPressed: () {
                setDiceState();
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),),
            ),

           ],
        ),
      ),
    );
  }
  void setDiceState()
  {
    setState(() {
      rightDiceNumber = Random().nextInt(6)+1;
      leftDiceNumber = Random().nextInt(6)+1;
    });
  }
}
