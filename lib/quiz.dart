import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final String question;
  final List<String> answer;
  final VoidCallback selectHandler;

  const Quiz(this.question, this.answer, this.selectHandler, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question),
        ...answer
            .map((answer) => Answer(selectHandler, answer))
            .toList()
      ],
    );
  }
}
