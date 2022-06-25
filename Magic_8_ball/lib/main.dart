import 'package:flutter/material.dart';
import 'dart:math';
void main()=>runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(

      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything', style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),),
        backgroundColor: Colors.blueAccent[700],
      ),
      body: Ball(),

    ),
  ),
);

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child:
 Row(
      children: <Widget>[
      Expanded(
          child:TextButton(onPressed: () {
            setState((){
              ballNumber=Random().nextInt(5)+1;
            });
    },
      child: Image.asset('images/ball$ballNumber.png'),),
    ),
    ],),),);
  }
}

