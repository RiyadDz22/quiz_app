import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Quiz(),
    ),
  );
}
