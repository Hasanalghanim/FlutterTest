import 'package:flutter/material.dart';

// Runs Main app
void main() => runApp(MyApp());

// Actual stateless app/widget
class MyApp extends StatefulWidget {
  //
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  // Button printing Function
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ["what's your favroite color?", "What's your Fav Animal?"];
    return MaterialApp(
      // Scaffold Creates Big "Container"
      home: Scaffold(
        // AppBar = NavBar
        appBar: AppBar(
          title: Text('Newapp'),
        ),
        // Body = Everything under AppBar
        body: Column(
          // Column displayes all Widgets Vertical
          // Childrin Hold all Widgets in body
          children: [
            Text(
              questions[questionIndex],
            ),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () => print("Answer 2 picked "),
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: () => print("Answer 3 picked "),
            )
          ],
        ),
      ),
    );
  }
}
