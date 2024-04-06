import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:focal/common/styles/styles.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle title1() {
    return TextStyle(
        color: AppColors.secondaryColor,
        fontSize: 64.sp,
        height: 1,
        fontFamily:
            GoogleFonts.dmSerifText(fontWeight: FontWeight.bold).fontFamily);
  }

  static TextStyle title2() {
    return TextStyle(
        color: AppColors.secondaryColor,
        fontSize: 32.sp,
        height: 1,
        fontFamily:
            GoogleFonts.dmSerifText(fontWeight: FontWeight.bold).fontFamily);
  }

  static TextStyle body({Color color = AppColors.secondaryColor}) {
    return TextStyle(
        color: color,
        fontSize: 20.sp,
        fontFamily: GoogleFonts.roboto(fontWeight: FontWeight.w400).fontFamily);
  }

  static TextStyle bodyMedium({Color color = AppColors.secondaryColor}) {
    return TextStyle(
        color: color,
        fontSize: 20.sp,
        fontFamily: GoogleFonts.roboto(fontWeight: FontWeight.w600).fontFamily);
  }

  static TextStyle bodyBold({Color color = AppColors.secondaryColor}) {
    return TextStyle(
        color: color,
        fontSize: 20.sp,
        fontFamily: GoogleFonts.roboto(fontWeight: FontWeight.bold).fontFamily);
  }

  static TextStyle subtitle({Color color = AppColors.secondaryColor}) {
    return TextStyle(
        color: color,
        fontSize: 16.sp,
        fontFamily: GoogleFonts.roboto(fontWeight: FontWeight.w400).fontFamily);
  }

  static TextStyle subtitleMedium({Color color = AppColors.secondaryColor}) {
    return TextStyle(
        color: color,
        fontSize: 16.sp,
        fontFamily: GoogleFonts.roboto(fontWeight: FontWeight.w600).fontFamily);
  }

  static TextStyle subtitleBold({Color color = AppColors.secondaryColor}) {
    return TextStyle(
        color: color,
        fontSize: 16.sp,
        fontFamily: GoogleFonts.roboto(fontWeight: FontWeight.bold).fontFamily);
  }

  static TextStyle caption({Color color = AppColors.secondaryColor}) {
    return TextStyle(
        color: color,
        fontSize: 14.sp,
        fontFamily: GoogleFonts.roboto(fontWeight: FontWeight.w300).fontFamily);
  }

  static TextStyle captionMedium({Color color = AppColors.secondaryColor}) {
    return TextStyle(
        color: color,
        fontSize: 14.sp,
        fontFamily: GoogleFonts.roboto(fontWeight: FontWeight.w500).fontFamily);
  }

  static TextStyle captionBold({Color color = AppColors.secondaryColor}) {
    return TextStyle(
        color: color,
        fontSize: 14.sp,
        fontFamily: GoogleFonts.roboto(fontWeight: FontWeight.bold).fontFamily);
  }
}
