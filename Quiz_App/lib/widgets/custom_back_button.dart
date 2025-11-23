import 'package:flutter/material.dart';

class CustomBackButtom extends StatelessWidget {
  const CustomBackButtom({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pageController.previousPage(
          duration: Duration(microseconds: 500),
          curve: Curves.linear,
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xff8D83ff)),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 8,
          children: [
            Text(
              "Back",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: "Gilroy",
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(Icons.arrow_back_ios, color: Colors.white, size: 16),
          ],
        ),
      ),
    );
  }
}
