import 'package:flutter/material.dart';
import 'package:flutter3/models/bmi_input_model.dart';
import 'package:flutter3/widgets/gender_item.dart';

class GenderSelectionSection extends StatefulWidget {
  const GenderSelectionSection({super.key, required this.bmiInputModel});
  final BmiInputModel bmiInputModel;

  @override
  State<GenderSelectionSection> createState() => _GenderSelectionSectionState();
}

class _GenderSelectionSectionState extends State<GenderSelectionSection> {
  bool isMaleSelected = true;
  Color activeColor = Color(0xff090B24);
  Color inactiveColor = Color(0xff17172F);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              isMaleSelected = true;
              widget.bmiInputModel.gender = "Male";
              setState(() {});
            },
            child: GenderItem(
              icon: Icons.male,
              data: "MALE",
              color: isMaleSelected ? activeColor : inactiveColor,
            ),
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: GestureDetector(
            onTap: () {
              isMaleSelected = false;
              widget.bmiInputModel.gender = "Female";
              setState(() {});
            },
            child: GenderItem(
              icon: Icons.female,
              data: "FEMALE",
              color: !isMaleSelected ? activeColor : inactiveColor,
            ),
          ),
        ),
      ],
    );
  }
}
