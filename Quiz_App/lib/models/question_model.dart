import 'dart:core';

class QuestionModel {
  final String title;
  final String questionNumber;
  final List<String> options;
  final String image;
  String selectedAnswer = "";
  QuestionModel({
    required this.title,
    required this.questionNumber,
    required this.options,
    required this.image,
  });
}
