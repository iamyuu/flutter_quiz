import 'package:flutter/material.dart';

void main() => runApp(const App());

// `extends StatelessWidget` => inheritance -> get all feature from parent class (`StatelessWidget`)
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var questions = [
    //   "What's your favorite color?",
    //   "What's your favorite animal?",
    // ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: Column(
          children: const [
            Text('The question:'),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
