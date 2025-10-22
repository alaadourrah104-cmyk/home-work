import 'package:flutter/material.dart';
import '../widgets/gender_card.dart';
import '../widgets/height_slider.dart';
import '../widgets/weight_age_card.dart';
import 'result_screen.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale = true;
  double height = 170;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BMI CALCULATOR")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GenderCard(
                    icon: Icons.male,
                    label: "MALE",
                    isSelected: isMale,
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: GenderCard(
                    icon: Icons.female,
                    label: "FEMALE",
                    isSelected: !isMale,
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: HeightSlider(
              height: height,
              onChanged: (value) {
                setState(() {
                  height = value;
                });
              },
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: WeightAgeCard(
                    label: "WEIGHT",
                    value: weight,
                    onIncrement: () {
                      setState(() {
                        weight++;
                      });
                    },
                    onDecrement: () {
                      setState(() {
                        weight--;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: WeightAgeCard(
                    label: "AGE",
                    value: age,
                    onIncrement: () {
                      setState(() {
                        age++;
                      });
                    },
                    onDecrement: () {
                      setState(() {
                        age--;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              double bmi = weight / pow(height / 100, 2);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResultScreen(bmi: bmi)),
              );
            },
            child: Container(
              color: const Color(0xFFEB1555),
              width: double.infinity,
              height: 70,
              child: const Center(
                child: Text(
                  "CALCULATE",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
