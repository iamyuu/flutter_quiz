import 'package:flutter/material.dart';


void main() => runApp(const App());

// `extends StatelessWidget` => inheritance -> get all feature from parent class (`StatelessWidget`)
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: const Text('Hello world!'),
      ),
    );
  }
}
