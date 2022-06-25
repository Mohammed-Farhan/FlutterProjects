import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Expanded buildKey({required Color color, required int soundNumber, required String text}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Container(
      child:Text(text, style: TextStyle(fontSize:20,),),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1,   text: 'Red'),
              buildKey(color: Colors.yellow, soundNumber: 2,text: 'Yellow'),
              buildKey(color: Colors.orangeAccent, soundNumber: 3,text: 'Orange'),
              buildKey(color: Colors.purpleAccent, soundNumber: 4,text: 'Purple'),
              buildKey(color: Colors.blue, soundNumber: 5,text: 'Blue'),
              buildKey(color: Colors.green, soundNumber: 6,text: 'Green'),
              buildKey(color: Colors.brown, soundNumber: 7,text: 'Brown'),
            ],
          ),
        ),
      ),
    );
  }

  void playSound(int variable) {
    final player = AudioCache();
    player.play('note$variable.wav');
  }
}
