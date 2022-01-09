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
  int _currentQuestion = 0;

  void _answerQuestion() {
    setState(() {
      _currentQuestion += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: Column(
          children: [
            Question(questions[_currentQuestion]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
