import 'package:flutter/material.dart';
import 'package:flutter_public_repository/core/resources/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppFontStyles {
  /// Light [FontWeight.w300]
  /// Regular [FontWeight.w400]
  /// Medium [FontWeight.w500]
  /// SemiBold [FontWeight.w600]
  /// Bold [FontWeight.w700]

  static TextStyle textColorRegular13 = TextStyle(
    fontWeight: FontWeight.w400,
    color: AppColors.textColor,
    fontSize: 13.sp,
  );

  static TextStyle textColorRegular14 = TextStyle(
    fontWeight: FontWeight.w400,
    color: AppColors.textColor,
    fontSize: 14.sp,
  );

  static TextStyle textColorRegular16 = TextStyle(
    fontWeight: FontWeight.w500,
    color: AppColors.textColor,
    fontSize: 16.sp,
  );

  static TextStyle titleColorRegular13 = TextStyle(
      fontWeight: FontWeight.w400,
      color: AppColors.titleColor,
      fontSize: 13.sp);

  static TextStyle titleColorRegular14 = TextStyle(
      fontWeight: FontWeight.w400,
      color: AppColors.titleColor,
      fontSize: 14.sp);

  static TextStyle titleColorRegular18 = TextStyle(
      fontWeight: FontWeight.w500,
      color: AppColors.titleColor,
      fontSize: 18.sp);
}
