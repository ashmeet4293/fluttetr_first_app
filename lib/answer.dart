import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function selectHandler;

  Answer(this.answer, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answer),
        color: Colors.amber,
        onPressed: selectHandler,
      ),
    );
  }
}
