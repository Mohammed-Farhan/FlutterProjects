import 'package:destini/story_brain.dart';
import 'package:flutter/material.dart';
import 'package:destini/story.dart';

void main() => runApp(Destini());
StoryBrain sb= StoryBrain();

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}


class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Destini-Stories'),
        backgroundColor: Colors.blue[700] ,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.png"),
              fit: BoxFit.cover),
        ),
         padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                      sb.getStory(),
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: FlatButton(
                  onPressed: () {

                    setState(() {
                   sb.nextStory(1);
                  });
                  },
                    color: Colors.red,
                    child: Text(
                    sb.getChoice1(),
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: sb.buttonShouldBeVisible(),
                  child: FlatButton(
                    onPressed: () {
                      //Choice 2 made by user.
                      setState(() {
                        sb.nextStory(2);
                      });
                    },
                    color: Colors.blue,
                    child: Text(
                       sb.getChoice2(),
                       
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

 
