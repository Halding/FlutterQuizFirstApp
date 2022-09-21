import 'package:first_app/quiz.dart';
import 'package:first_app/restart.dart';
import 'package:flutter/material.dart';

/* void main() {
runApp(MyApp());
} */

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _qIndex = 0;
  final _title = "My First App";
  final _questions = [
    {
      "questionText": "What is your fav color",
      "answer": ["Red", "Blue", "Yellow"],
    },
    {
      "questionText": "What is your fav animal",
      "answer": ["Rabbit", "Snake", "Lion"],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _qIndex++;
    });
  }

  void _retartQuestion() {
    setState(() {
      _qIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
        body: _qIndex != _questions.length
            ? Quiz(
                questions: _questions,
                qIndex: _qIndex,
                answerQuestion: _answerQuestion)
            : Restart(restartQuestion: _retartQuestion)
      ),
    );
  }
}
