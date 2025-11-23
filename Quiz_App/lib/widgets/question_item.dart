import 'package:flutter/material.dart';
import 'package:flutter6/models/question_model.dart';
import 'package:flutter6/models/quiz_manager.dart';
import 'package:flutter6/theme/app_text_styles.dart';
import 'package:flutter6/widgets/options_list.dart';
import 'package:flutter6/widgets/question_item_header.dart';

class QuestionItem extends StatefulWidget {
  const QuestionItem({
    super.key,
    required this.questionModel,
    required this.quizManager,
  });
  final QuestionModel questionModel;
  final QuizManager quizManager;

  @override
  State<QuestionItem> createState() => _QuestionItemState();
}

class _QuestionItemState extends State<QuestionItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        QuestionItemHeader(questionModel: widget.questionModel),
        SizedBox(height: 16),
        Text(widget.questionModel.title, style: AppTextStyles.medium24()),
        SizedBox(height: 32),

        OptionsList(
          questionModel: widget.questionModel,
          quizManager: widget.quizManager,
          onSelect: () {
            setState(() {});
          },
        ),

        widget.questionModel.isCorrectAnswer()
            ? Text(
                "Correct",
                style: AppTextStyles.medium12(color: Colors.white),
              )
            : Text(
                " Incorrect",
                style: AppTextStyles.medium12(color: Colors.white),
              ),
      ],
    );
  }
}
