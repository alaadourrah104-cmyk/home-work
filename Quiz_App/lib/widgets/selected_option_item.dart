import 'package:flutter/material.dart';
import 'package:flutter6/theme/app_decorations.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(children: [
      Container(
        width: 300,
        padding: EdgeInsets.all(15),
        decoration: AppDecorations.selectedAnswerBackgroundGradient,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 16,
            children: [
              Container(width: 19,
              padding: EdgeInsets.all(5),
              decoration: ShapeDecoration(
                color: Color(0XFF2B0062),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9.5),
                )),
                child: Row(  mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 10,
            children: [

                ],),
                
                )

          ],)
          
          ,
      )
    ],)
  }
}
