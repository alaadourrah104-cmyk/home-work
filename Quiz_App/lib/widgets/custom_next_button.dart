import 'package:flutter/material.dart';

class CustomNextButton extends StatelessWidget {
  const CustomNextButton({
    super.key,
    required this.pageController,
    required this.pageCount,
  });
  final PageController pageController;
  final int pageCount;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (pageController.page!.toInt() < pageCount - 1) {
          pageController.nextPage(
            duration: Duration(microseconds: 500),
            curve: Curves.linear,
          );
        } else {}
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
          spacing: 11,
          children: [
            Text(
              "Next",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: "Gilroy",
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
          ],
        ),
      ),
    );
  }
}
