import 'package:flutter/material.dart';
import 'package:flutter6/constants/assets.dart';
import 'package:flutter6/models/quiz_manager.dart';
import 'package:flutter6/theme/app_decoration.dart';
import 'package:flutter6/widgets/select_option_item.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key, required this.quizManager});
  final QuizManager quizManager;

  int _calculateTotalScore() {
    return quizManager.calculateCorrectAnswers().toInt();
  }

  double _calculatePercentage() {
    if (quizManager.questions.isEmpty) return 0.0;
    final correctAnswer = quizManager.calculateCorrectAnswers();
    return (correctAnswer / quizManager.questions.length) * 100;
  }

  String _getResultMessage(double percentage) {
    if (percentage >= 90) {
      return "Excellent";
    } else if (percentage >= 70) {
      return "Very Good";
    } else if (percentage >= 50) {
      return "Good";
    } else {
      return "Keep Practicing";
    }
  }

  @override
  Widget build(BuildContext context) {
    final score = _calculateTotalScore();
    final totalQuestion = quizManager.questions.length;
    final percentage = _calculatePercentage();
    final message = _getResultMessage(percentage);

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: AppDecoration.mainBainBackgroundGradient,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(Assets.imagesGradinet, fit: BoxFit.fitHeight),
            ),
            SafeArea(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.12),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.white24),
                        ),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 48,
                              backgroundColor: Colors.white,
                              child: Text(
                                "${percentage.toStringAsFixed(0)}%",
                                style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              message,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              "Score: $score / $totalQuestion",
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      Expanded(
                        child: ListView.builder(
                          itemCount: quizManager.questions.length,
                          itemBuilder: (context, index) {
                            final question = quizManager.questions[index];
                            return SelectedOptionItem(
                              option: question.selectedAnswer,
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              quizManager;
                              Navigator.pop(context);
                            },
                            child: const Text("Retake Quiz"),
                          ),
                          const SizedBox(width: 16),
                          OutlinedButton(
                            onPressed: () {
                              Navigator.popUntil(
                                context,
                                (route) => route.isFirst,
                              );
                            },
                            child: const Text("Exit"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
