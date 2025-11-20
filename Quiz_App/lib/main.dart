import 'package:flutter/material.dart';
import 'package:flutter6/views/home_view.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Gilroy"),
      home: HomeView(),
    );
  }
}
