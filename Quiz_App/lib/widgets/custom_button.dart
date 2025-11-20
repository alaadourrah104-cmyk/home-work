import 'package:flutter/material.dart';
import 'package:flutter6/theme/app_colors.dart';
import 'package:flutter6/theme/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double width;
  final double borderRadius;
  final EdgeInsetsGeometry padding;

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.width = 300,
    this.borderRadius = 12.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 26, vertical: 13),
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: padding,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),

        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(text, style: AppTextStyles.medium18(color: AppColors.primaryColor))]
        ),
      ),
    );
  }
}
