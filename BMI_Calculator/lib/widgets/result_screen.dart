import 'package:flutter/material.dart';
import 'package:flutter3/widgets/home_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.bmiResult});
  final double bmiResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Text(
          "Result = ${bmiResult.toStringAsFixed(2)}",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
