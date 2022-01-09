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
    // ignore: fixme
    // FIXME: I'm getting error type when following the course (leave it for now)

    // the original from course is here:
    // var questions = [
    //   {
    //     'text': "What's your favorite color?",
    //     'answers': ['Red', 'Green', 'Blue'],
    //   },
    //   {
    //     'text': "What's your favorite animal?",
    //     'answers': ['Cat', 'Dog'],
    //   },
    //   {
    //     'text': "What's your favorite instuctor?",
    //     'answers': ['Ken', 'Max', 'Angela', 'Andrei', 'Steele'],
    //   },
    // ];

    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
      "What's your favorite instuctor?",
    ];

    var answers = [
      ['Red', 'Green', 'Blue'],
      ['Cat', 'Dog'],
      ['Ken', 'Max', 'Angela', 'Andrei', 'Steele'],
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ...answers[_questionIndex]
                .map((answer) => Answer(_answerQuestion, answer))
                .toList()
          ],
        ),
      ),
    );
  }
}
