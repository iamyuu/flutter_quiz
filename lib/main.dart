import 'package:flutter/material.dart';

void main() => runApp(App());

// `extends StatelessWidget` => inheritance -> get all feature from parent class (`StatelessWidget`)
class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  int currentQuestion = 0;

  void answerQuestion() {
    currentQuestion += 1;

    // ignore: avoid_print
    print('pressed ' + currentQuestion.toString());
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
            Text(questions[currentQuestion]),
            ElevatedButton(
              child: const Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: const Text('Answer 2'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: const Text('Answer 3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
