import 'package:flutter/material.dart';
import 'package:my_first_app/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> _questions;
  final Function _answerQuestion;
  final int _questionIndex;

  Quiz(@required this._questions, @required this._answerQuestion, @required this._questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
       children: [
            Question(_questions[_questionIndex]['questionText']),
            ...(_questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(answer, _answerQuestion);
            }).toList()
          ],
    );
  }
}