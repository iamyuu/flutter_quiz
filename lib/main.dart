// ignore_for_file: avoid_print, todo, fixme

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(const App());

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    const allQuestions = [
      {
        'text': "What's your favorite color?",
        'answers': ['Red', 'Green', 'Blue'],
      },
      {
        'text': "What's your favorite animal?",
        'answers': ['Cat', 'Dog'],
      },
      {
        'text': "What's your favorite instuctor?",
        'answers': ['Ken', 'Max', 'Angela', 'Andrei', 'Steele'],
      },
    ];

    // Dart thing `allQuestions[_questionIndex]` is `Object?`
    var currentText = allQuestions[_questionIndex]['text'].toString();
    var currentAnswers = allQuestions[_questionIndex]['answers'] as List<String>;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: Column(
          children: [
            Question(currentText),
            ...currentAnswers
                .map((answer) => Answer(_answerQuestion, answer))
                .toList()
          ],
        ),
      ),
    );
  }
}
