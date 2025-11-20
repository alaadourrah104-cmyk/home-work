import 'package:flutter/material.dart';
import 'package:flutter6/models/question_model.dart';
import 'package:flutter6/widgets/question_item_header.dart';
import 'package:flutter6/widgets/selected_option_item.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem({super.key, required this.questionModel});
  final QuestionModel questionModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.start ,
      
      children: [QuestionItemHeader(questionModel: questionModel),
      SizedBox(height: 16),
      Text("How  would you describe your level of satisfaction with the healthcare system?"
      ,style: TextStyle(
        color: Colors.white,
        fontFamily: "Gilroy",
        fontSize: 24,
        fontWeight: FontWeight.w500,)
      ),
      SizedBox(height: 32),

      SelectedOptionItem(),
      ]);
  }
}
