import "package:flutter/material.dart";
import "package:flutter6/models/question_model.dart";
import "package:flutter6/theme/app_text_styles.dart";
import "package:flutter_svg/svg.dart";

class QuestionItemHeader extends StatelessWidget {
  const QuestionItemHeader({super.key, required this.questionModel});
  final QuestionModel questionModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: Color(0xff8D83FF),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(0xffBBB2FF), width: 1),
          borderRadius: BorderRadius.circular(200),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8,
        children: [
          SvgPicture.asset(questionModel.image),
          Text(
            "Question ${questionModel.questionNumber}",
            style: AppTextStyles.regular12(),
          ),
        ],
      ),
    );
  }
}
