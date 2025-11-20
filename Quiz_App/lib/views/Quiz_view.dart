import 'package:flutter/material.dart';
import 'package:flutter6/assets.dart';
import 'package:flutter6/models/question_model.dart';

import 'package:flutter6/theme/app_decorations.dart';
import 'package:flutter6/widgets/question_item.dart';

class QuizView extends StatefulWidget {
  const QuizView({super.key});

  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: AppDecorations.mainBackGroundDecoration,
        child: SafeArea(
          child: PageView(
            children: [
               QuestionItem(
             questionModel:    QuestionModel(
                 title: "What is the capital of France",
              questionNumber: "1",
              options: ["Berlin", "Madrid", "Paris", "Rome"],
              image: Assets.q1,
    ),
               ),
            
              // 
            ],
          ),
        ),
      ),
    );
  }
}



