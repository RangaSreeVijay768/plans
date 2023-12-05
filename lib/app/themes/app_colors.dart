import 'package:flutter/material.dart';


abstract class AppColors {
  static const Color primary = Color.fromRGBO(41, 66, 136, 1);
  static const Color bgPrimary = Color.fromRGBO(109, 62, 117, 1);
  static const Color bgPrimary2 = Color.fromRGBO(13, 110, 255, 1);
  static const Color bgBackgroundPurple = Color.fromRGBO(135, 97, 142, 1);
  static const Color bgLightPurple = Color.fromRGBO(193, 98, 211, 1);
  static const Color waterPrimary = Color.fromRGBO(0, 147, 183, 1);
  static const Color skyBlue = Color.fromRGBO(64, 165, 243, 1);

  static const Color textHeading = Color.fromRGBO(23, 23, 23, 1);
  static const Color textNormal = Color.fromRGBO(45, 45, 45, 1);
  static const Color textGrey = Color.fromRGBO(120, 120, 120, 1);
  static const Color transparent = Color.fromRGBO(0, 0, 0, 0);
  static const Color transparent08 = Color.fromRGBO(0, 0, 0, 0.8);
  static const Color grey1 = Color.fromRGBO(247, 247, 247, 1);
  static const Color grey2 = Color.fromRGBO(234, 234, 234, 1);
  static const Color grey3 = Color.fromRGBO(240, 236, 241, 1);
  static const Color grey4 = Color.fromRGBO(177, 177, 177, 1);
  static const Color white = Color.fromRGBO(255, 255, 255, 1);
  static const Color white03 = Color.fromRGBO(255, 255, 255, 0.3);
  static const Color white04 = Color.fromRGBO(255, 255, 255, 0.4);
  static const Color white012 = Color.fromRGBO(255, 255, 255, 0.12);
  static const Color white018 = Color.fromRGBO(255, 255, 255, 0.18);
  static const Color bgLightGrey = Color.fromRGBO(234, 236, 243, 1);
  static const Color bgLightBlue = Color.fromRGBO(130, 160, 243, 1);
  static const Color textRed = Color.fromRGBO(224, 36, 36, 1);
  static const Color green = Color.fromRGBO(14, 183, 0, 1);
  static const Color coinProgress = Color.fromRGBO(255, 204, 102, 1);
  static const Color bmiTracker = Color.fromRGBO(115, 41, 209, 1);

  static ColorFilter bgFilter = ColorFilter.mode(
      Colors.white.withOpacity(0.4), BlendMode.dstATop);
}




