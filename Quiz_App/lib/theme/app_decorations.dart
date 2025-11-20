import 'package:flutter/material.dart';

abstract class AppDecorations {
  static BoxDecoration selectedAnswerBackgroundGradient = BoxDecoration(
    gradient: buildSecondaryGradient(),
    
  );
  static BoxDecoration mainBackGroundDecoration = BoxDecoration(
    gradient: buildMainBackgroundGradient(),
  );

  static LinearGradient buildMainBackgroundGradient() {
    return LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color(0xff060B26), Color(0xff1A1F37)],
    );
  }

  static LinearGradient buildSecondaryGradient() {
    return LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [Color(0xFFBBB2FF), Color(0XFFC6C2F8)],
    );
  }
}
