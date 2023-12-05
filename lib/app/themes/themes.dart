import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:flutter/material.dart';

import '../styles/colors.dart';
import 'app_colors.dart';

abstract class Themes {
  static ThemeData lightTheme = ThemeData.light(useMaterial3: true).copyWith(
      // fontFamily: Fonts.fontNunito,
      primaryColor: AppColors.primary,
      textTheme: Typography().black.apply(fontFamily: Fonts.fontNunito));

}
