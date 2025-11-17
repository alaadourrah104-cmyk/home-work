import 'package:flutter/material.dart';
import 'package:flutter3/models/bmi_input_model.dart';
import 'package:flutter3/widgets/custom_container.dart';
import 'package:flutter3/widgets/custom_slider.dart';
import 'package:flutter3/widgets/section_title.dart';

class HeightSelectionItem extends StatefulWidget {
  const HeightSelectionItem({super.key, required this.bmiInputModel});
  final BmiInputModel bmiInputModel;

  @override
  State<HeightSelectionItem> createState() => _HeightSelectionItemState();
}

class _HeightSelectionItemState extends State<HeightSelectionItem> {
  double height = 174;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          SectionTitle(text: "HEIGHT"),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ValueText(text: height.round().toDouble()),
              Text("cm", style: TextStyle(color: Colors.grey, fontSize: 14)),
            ],
          ),
          CustomSlider(
            value: height,
            onChanged: (value) {
              height = value;
              widget.bmiInputModel.height = value / 100;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }

  int newMethod() => height.round();
}

class ValueText extends StatelessWidget {
  const ValueText({super.key, required this.text});
  final double text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text.round().toString(),
      style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        textBaseline: TextBaseline.alphabetic,
      ),
    );
  }
}
