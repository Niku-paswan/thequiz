import 'package:flutter/material.dart';
import 'package:thequiz/quiz.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  var questionList = [
    {
      'questionText': 'What is your favorite color',
      'answerText': ['Red', 'Blue', 'Black', 'White'],
    },
    {
      'questionText': 'Who is Your Favorite Teacher',
      'answerText': [
        'Niku Paswan',
        'Ravi Sharma',
        'Nadeem',
      ],
    },
    {
      'questionText': 'What is your favorite vegetable',
      'answerText': [
        'Potato',
        'Tomato',
        'Onion',
      ],
    },
  ];

  final ButtonStyle style = ElevatedButton.styleFrom(
      primary: Colors.white,
      onPrimary: Colors.blue,
      textStyle: const TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.bold,
      ));

  void quetionAnswer() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Quiz',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My FirstApp',
          ),
        ),
        body: _questionIndex < questionList.length
            ? Quiz(questionList,quetionAnswer,_questionIndex)
            : const Center(
                child: Text('You did it'),
              ),
      ),
    );
  }
}
