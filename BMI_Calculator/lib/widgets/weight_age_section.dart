import 'package:flutter/material.dart';
import 'package:flutter3/models/bmi_input_model.dart';
import 'package:flutter3/widgets/counter_card.dart';

class WeightAgeSection extends StatelessWidget {
  const WeightAgeSection({super.key, required this.bmiInputModel});
  final BmiInputModel bmiInputModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CounterCard(
            text: "WEIGHT",
            defaultValue: 70,
            onChanged: (value) {
              bmiInputModel.weight = value;
            },
          ),
        ),

        SizedBox(width: 12),
        Expanded(
          child: CounterCard(
            text: "AGE",
            defaultValue: 20,
            onChanged: (value) {
              bmiInputModel.age = value;
            },
          ),
        ),
      ],
    );
  }
}
