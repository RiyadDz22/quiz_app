import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/question_summary/question_ident.dart';

class SumItem extends StatelessWidget {
  const SumItem(this.itemData, {super.key});
  final Map<String, Object> itemData;
  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdent(isCorrectAnswer, itemData['question_index'] as int),
        const SizedBox(
          width: 20,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              itemData['question'] as String,
              style: GoogleFonts.lato(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              itemData['user_answer'] as String,
              style: const TextStyle(color: Color.fromARGB(255, 249, 133, 241)),
            ),
            Text(
              itemData['correct_answer'] as String,
              style: const TextStyle(color: Color.fromARGB(255, 150, 198, 241)),
            )
          ],
        ))
      ],
    );
  }
}
