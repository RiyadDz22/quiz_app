import 'package:flutter/material.dart';

class QuestionIdent extends StatelessWidget {
  const QuestionIdent(this.isCorrectAnswer, this.questionIndex, {super.key});
  final int questionIndex;
  final bool isCorrectAnswer;
  @override
  Widget build(BuildContext context) {
    final questionNum = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: (isCorrectAnswer
              ? const Color.fromARGB(255, 150, 198, 241)
              : const Color.fromARGB(255, 249, 133, 241)),
          borderRadius: BorderRadius.circular(100)),
      child: Text(
        questionNum.toString(),
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Color.fromARGB(255, 22, 2, 56)),
      ),
    );
  }
}
