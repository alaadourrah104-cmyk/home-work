import 'package:flutter/material.dart';
import 'package:flutter3/models/bmi_input_model.dart';
import 'package:flutter3/widgets/gender_selection_section.dart';
import 'package:flutter3/widgets/height_selection_item.dart';
import 'package:flutter3/widgets/home_app_bar.dart';
import 'package:flutter3/widgets/result_screen.dart';
import 'package:flutter3/widgets/weight_age_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BmiInputModel bmiInputModel = BmiInputModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff03051A),
      body: SafeArea(
        child: Column(
          children: [
            HomeAppBar(),
            SizedBox(height: 3),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  spacing: 14,
                  children: [
                    Expanded(
                      child: GenderSelectionSection(
                        bmiInputModel: bmiInputModel,
                      ),
                    ),
                    Expanded(
                      child: HeightSelectionItem(bmiInputModel: bmiInputModel),
                    ),
                    Expanded(
                      child: WeightAgeSection(bmiInputModel: bmiInputModel),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // ignore: unused_local_variable
                  double bmiResult = bmiInputModel.calculateBmi();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(bmiResult: bmiResult),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xfff72585),
                  padding: EdgeInsets.symmetric(horizontal: 54, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 4,
                ),

                child: Text(
                  "CALCULATE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
