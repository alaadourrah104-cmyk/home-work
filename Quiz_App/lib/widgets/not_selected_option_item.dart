import 'package:flutter/material.dart';
import 'package:flutter6/assets.dart';
import 'package:flutter6/theme/app_colors.dart';
import 'package:flutter6/theme/app_decoration.dart';
import 'package:flutter6/theme/app_text_styles.dart';
import 'package:flutter_svg/svg.dart';

class NotSelectedOptionItem extends StatelessWidget {
  const NotSelectedOptionItem({super.key,required this.option});
final String option;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15),
      decoration: AppDecoration.notSelectedAnswerBackgroundDecoration,
      child: Row(
         mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16,
        
        children: [
            CircleAvatar(
            radius: 12,
            
            backgroundColor: AppColors.primaryColor,
            child: CircleAvatar(
              radius: 10.2,
              child: SvgPicture.asset(Assets.checkIcon,
              colorFilter: ColorFilter.mode(AppColors.primaryColor, BlendMode.srcIn),))),
         
       Text("Satisfied ",style:AppTextStyles.medium16(color: AppColors.primaryColor)),



        ],),);
  }
}