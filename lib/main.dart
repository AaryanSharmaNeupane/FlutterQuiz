import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
  }

  var questions = [
    {
      'questionText': 'What\'s your name?',
      'answers': ['Ram', 'Sam', 'Hari', 'Geeta'],
    },
    {
      'questionText': "What's your favourite color?",
      'answers': ['Black', 'White', 'Green', 'Yellow'],
    },
    {
      'questionText': "What's your favourite animal?",
      'answers': ['Cat', 'Dog', 'Horse', 'Lion'],
    },
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]['questionText']),
            ...(questions[questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
