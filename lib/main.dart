// ignore_for_file: avoid_print, todo, fixme

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(const App());

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _questionIndex = 0;
  int _totalScore = 0;

  final allQuestions = const [
    {
      'text': "What's your favorite color?",
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 10},
        {'text': 'Blue', 'score': 10},
      ],
    },
    {
      'text': "What's your favorite animal?",
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 10},
      ],
    },
    {
      'text': "What's your favorite instuctor?",
      'answers': [
        {'text': 'Ken', 'score': 10},
        {'text': 'Max', 'score': 10},
        {'text': 'Angela', 'score': 10},
        {'text': 'Andrei', 'score': 10},
        {'text': 'Steele', 'score': 10},
      ],
    },
  ];

  void _answerQuestion(int score) {
    if (_questionIndex < allQuestions.length) {
      setState(() {
        _totalScore += score;
        _questionIndex += 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Dart thing `allQuestions[_questionIndex]` is `Object?`
    var currentQuestion = allQuestions[_questionIndex]['text'].toString();
    var currentAnswers =
        allQuestions[_questionIndex]['answers'] as List<Map<String, Object>>;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: _questionIndex < allQuestions.length
            ? Quiz(currentQuestion, currentAnswers, _answerQuestion)
            : const Result(_totalScore),
      ),
    );
  }
}
