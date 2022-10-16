import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final finalScore;
  final VoidCallback resetQuiz;
  Result(this.finalScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (finalScore <= 8)
      resultText = 'You are awesome and innocent';
    else if (finalScore <= 12)
      resultText = 'Pretty Likeable';
    else if (finalScore <= 16)
      resultText = 'You are ........Strange?!';
    else
      resultText = 'You aer so bad';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            '$resultPhrase and your score was $finalScore',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            child: Text("Restart Quiz"),
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
