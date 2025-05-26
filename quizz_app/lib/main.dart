import 'package:flutter/material.dart';
import 'package:quizz_app/views/home_view.dart';

void main() {
  runApp(const QuizzApp());
}

class QuizzApp extends StatelessWidget {
  const QuizzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const HomeView(),
   
    );
  }
}
