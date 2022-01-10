import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  const Result(this.resultScore, {Key? key}) : super(key: key);

  String get resultPhrase {
    return 'is enough';
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        // resultPhrase,
        'is enough',
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
