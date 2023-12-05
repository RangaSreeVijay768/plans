import 'package:flutter/cupertino.dart';

import '../themes/app_colors.dart';
import 'colors.dart';


abstract class radius {
  static const br_t_20 = BorderRadius.only(
      topLeft: Radius.circular(20), topRight: Radius.circular(20));
  static const br_t_10 = BorderRadius.only(
      topLeft: Radius.circular(10), topRight: Radius.circular(10));
  static const br_b_10 = BorderRadius.only(
      bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10));



  static BorderRadius br_0 = BorderRadius.circular(0);
  static BorderRadius br_5 = BorderRadius.circular(5);
  static BorderRadius br_10 = BorderRadius.circular(10);
  static BorderRadius br_20 = BorderRadius.circular(20);
  static BorderRadius br_30 = BorderRadius.circular(30);
  static BorderRadius br_100 = BorderRadius.circular(100);
}

abstract class borders {
  static Border b_1px_grey4 = Border.all(color: AppColors.grey4, width: 1);
  static Border b_1px_black = Border.all(color: AppColors.textHeading, width: 1);
  static Border b_1px_grey2 = Border.all(color: AppColors.grey2, width: 1);
  static Border b_1px_green = Border.all(color: AppColors.green , width: 1);
  static Border b_0_5px_bgPrimary = Border.all(color: AppColors.bgPrimary, width: 0.5);
  static Border b_1px_bgPrimary = Border.all(color: AppColors.bgPrimary, width: 1);
  static Border b_3px_bgPrimary = Border.all(color: AppColors.bgPrimary, width: 3);
  static Border b_1px_bgLightBlue = Border.all(color: AppColors.bgLightBlue, width: 1);

  static Border bt_1px_grey4 = const Border(
      top: BorderSide(
        color: AppColors.grey4,
        width: 1,
      ));
  static Border bt_1px_grey2 = const Border(
      top: BorderSide(
        color: AppColors.grey2,
        width: 1,
      ));

  static Border bb_1px_grey1 = const Border(
      bottom: BorderSide(
        color: AppColors.grey1,
        width: 1,
      ));
  static Border bb_1px_grey2 = const Border(
      bottom: BorderSide(
        color: AppColors.grey2,
        width: 1,
      ));
  static Border bb_1px_white = const Border(
      bottom: BorderSide(
        color: AppColors.white,
        width: 1,
      ));
  static Border bb_1px_grey4 = const Border(
      bottom: BorderSide(
        color: AppColors.grey4,
        width: 1,
      ));
  static Border bb_1px_backgroundPurple = const Border(
      bottom: BorderSide(
        color: AppColors.bgBackgroundPurple,
        width: 1,
      ));
  static Border bbl_1px_normal = const Border(
      left: BorderSide(
          color: AppColors.textHeading,
          width: 1
      ),
      bottom: BorderSide(
          color: AppColors.textHeading,
          width: 1
      )
  );

}
