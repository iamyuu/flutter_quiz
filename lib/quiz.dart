import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final String question;
  final List<Map<String, Object>> answers;
  final void Function(int score) selectHandler;

  const Quiz(this.question, this.answers, this.selectHandler, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question),
        ...answers
            .map((answer) => Answer(() => selectHandler(answer['score'] as int), answer['text'].toString()))
            .toList()
      ],
    );
  }
}
