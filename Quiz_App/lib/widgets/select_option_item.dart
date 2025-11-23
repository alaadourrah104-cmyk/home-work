import 'package:flutter/material.dart';
import 'package:flutter6/assets.dart';
import 'package:flutter6/theme/app_colors.dart';
import 'package:flutter6/theme/app_decoration.dart';
import 'package:flutter6/theme/app_text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SelectedOptionItem extends StatelessWidget {
  const SelectedOptionItem({super.key,required this.option});
final String option;
  @override
  Widget build(BuildContext context) {
    return Container(
  width: double.infinity,
      padding: EdgeInsets.all(15),
      decoration: AppDecoration.selectedAnswerBackgroundDecoration,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16,
        children: [
          CircleAvatar(
            radius: 12,
            
            backgroundColor: AppColors.primaryColor,
            child: SvgPicture.asset(Assets.checkIcon)),
          Text(
            option,
            style: AppTextStyles.medium16(color: AppColors.primaryColor),)
          
        ],
      ),
    
          
        );
  }
  
}
