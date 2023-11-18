import 'package:flutter/material.dart';

class RealContent extends StatelessWidget {
  const RealContent(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(138, 255, 255, 255),
          ),
          const SizedBox(height: 45),
          const Text(
            'Learn flutter in the fun way!',
            style: TextStyle(
                fontSize: 25, color: Color.fromARGB(255, 212, 127, 238)),
          ),
          const SizedBox(height: 45),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'start quiz',
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 212, 127, 238)),
            ),
          )
        ],
      ),
    );
  }
}
