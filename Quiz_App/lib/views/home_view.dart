import 'package:flutter/material.dart';
import 'package:flutter6/theme/app_decoration.dart';
import 'package:flutter6/views/Quiz_view.dart';
import 'package:flutter6/widgets/custom_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter6/assets.dart';

import 'package:flutter6/theme/app_text_styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: AppDecoration.selectedAnswerBackgroundDecoration,
        child: Stack(
          children: [
            Positioned.fill(child: Image.asset(Assets.gradinet,fit:BoxFit.fitHeight ,)),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Text("Good morning", style: AppTextStyles.regular16()),
                    SizedBox(height: 8),
                    Text(
                      "New topic is waiting",
                      style: AppTextStyles.medium24(),
                    ),
                    Spacer(),
                    SvgPicture.asset(
                      Assets.homeImage,
                      height: MediaQuery.of(context).size.width,
                    ),
                    Spacer(),
                    CustomButton(text: "Start Quiz",onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>QuizView()));
                    },),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
