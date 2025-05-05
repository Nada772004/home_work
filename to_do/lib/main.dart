import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task App',
      theme: ThemeData(
        primaryColor: Colors.teal[100],
        scaffoldBackgroundColor: const Color(0xF1F8F6F6),
        fontFamily: 'Roboto',
      ),
      home: const HomeScreen(),
    );
  }
}
