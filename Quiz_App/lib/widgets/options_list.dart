import 'package:flutter/material.dart';
import 'package:flutter6/models/question_model.dart';
import 'package:flutter6/models/quiz_manager.dart';
import 'package:flutter6/widgets/option_item.dart';

class OptionsList extends StatefulWidget {
  const OptionsList({
    super.key,
    required this.questionModel,
    required this.quizManager,
    required this.onSelect,
  });

  final QuestionModel questionModel;
  final QuizManager quizManager;
  final Function() onSelect;

  @override
  State<OptionsList> createState() => _OptionsListState();
}

class _OptionsListState extends State<OptionsList>
    with AutomaticKeepAliveClientMixin {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Expanded(
      child: ListView.builder(
        itemCount: widget.questionModel.options.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              selectedIndex = index;
              String selectedAnswer = widget.questionModel.options[index];
              widget.quizManager.updateSelctedAnswer(
                widget.questionModel,
                selectedAnswer,
              );
              widget.onSelect;
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: OptionItem(
                isSelected: selectedIndex == index,
                option: widget.questionModel.options[index],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
