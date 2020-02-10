import 'package:flutter/material.dart';
import 'package:my_first_app/answer.dart';
import 'package:my_first_app/quiz.dart';
import 'package:my_first_app/result.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = const [
    {
      'questionText': 'What is your favorite color ? ',
      'answers': ['Red', 'Green', 'black']
    },
    {
      'questionText': 'What is your favorite Computer Game ? ',
      'answers': ['Pubg', 'CS GO', 'Battlefield']
    },
    {
      'questionText': 'What is your favorite Place? ',
      'answers': ['KTM', 'Pokhara', 'Palpa']
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length 
        ? 
          Quiz
          (
            _questions,
            _answerQuestion, 
            _questionIndex
          )
        : Result()
      )
    );
  }
}
