import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 2},
        {'text': 'Green', 'score': 4},
        {'text': 'Blue', 'score': 3},
        {'text': 'Black', 'score': 5},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Snake', 'score': 5},
        {'text': 'Cow', 'score': 4},
        {'text': 'Goat', 'score': 3},
      ],
    },
    {
      'questionText': 'Who\'s your favourite instructor?',
      'answers': [
        {'text': 'Zee', 'score': 1},
        {'text': 'Zee', 'score': 1},
        {'text': 'Zee', 'score': 1},
        {'text': 'Zee', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalSocre = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalSocre = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalSocre += score;
    setState(() {
      _questionIndex++;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(_totalSocre, _resetQuiz),
      ),
    );
  }
}
