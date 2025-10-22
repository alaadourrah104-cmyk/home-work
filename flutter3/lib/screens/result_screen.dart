import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double bmi;
  const ResultScreen({super.key, required this.bmi});

  String getResult() {
    if (bmi >= 25)
      return "Overweight";
    else if (bmi > 18.5)
      return "Normal ";
    else
      return "Underweight";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BMI RESULT")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Your BMI is:", style: const TextStyle(fontSize: 28)),
            Text(
              bmi.toStringAsFixed(1),
              style: const TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold,
                color: Color(0xFFEB1555),
              ),
            ),
            Text(getResult(), style: const TextStyle(fontSize: 22)),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Recalculate"),
            ),
          ],
        ),
      ),
    );
  }
}
