import 'package:flutter6/assets.dart';

import 'question_model.dart';

class QuizManager {
  final List<QuestionModel> _questions = [
    QuestionModel(
      title: "What is the capital of France",
      questionNumber: "1",
      options: ["Berlin", "Madrid", "Paris", "Rome"],
      image: Assets.q1,
    ),
    QuestionModel(
      title: "Which planet is known as the Red Planet?",
      questionNumber: "2",
      options: ["Earth", "Mars", "Jupiter", "Saturn"],
      image: Assets.q2,
    ),
    QuestionModel(
      title: "What is the largest ocean on Earth?",
      questionNumber: "3",
      options: [
        "Atlantic Ocean",
        "Indian Ocean",
        "Arctic Ocean",
        "Pacific Ocean",
      ],
      image: Assets.q3,
    ),
    QuestionModel(
      title: "who is the king of forest",
      questionNumber: "4",
      options: ["elephant", "lion", "monkey", "tiger"],
      image: Assets.q3,
    ),
  ];

  List<QuestionModel> get questions => _questions;
  void updateSelctedAnswer(QuestionModel question, String answer) {
    question.selectedAnswer = answer;
  }
}
