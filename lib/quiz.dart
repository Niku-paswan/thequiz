import 'package:flutter/material.dart';
import './question.dart';

import 'answer.dart';
class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  VoidCallback questionAnswer;
  final int _questionIndex;

  Quiz(this.questionList,this.questionAnswer,this._questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  Question(
                    questionList[_questionIndex]['questionText'] as String,
                  ),
                  ...(questionList[_questionIndex]['answerText']
                          as List<dynamic>)
                      .map((answer) {
                    return Answer(questionAnswer, answer);
                  }).toList()
                ],
              );
  }
}