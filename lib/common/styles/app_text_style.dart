import 'package:flutter/material.dart';
import 'package:focal/common/styles/styles.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle title1() {
    return TextStyle(
        color: AppColors.secondaryColor,
        fontSize: 64,
        height: 1,
        fontFamily:
            GoogleFonts.dmSerifText(fontWeight: FontWeight.bold).fontFamily);
  }

  static TextStyle title2() {
    return TextStyle(
        color: AppColors.secondaryColor,
        fontSize: 32,
        height: 1,
        fontFamily:
            GoogleFonts.dmSerifText(fontWeight: FontWeight.bold).fontFamily);
  }

  static TextStyle body() {
    return TextStyle(
        color: AppColors.secondaryColor,
        fontSize: 16,
        height: 1,
        fontFamily:
            GoogleFonts.dmSerifText(fontWeight: FontWeight.w300).fontFamily);
  }

  static TextStyle bodyMedium() {
    return TextStyle(
        color: AppColors.secondaryColor,
        fontSize: 16,
        height: 1,
        fontFamily:
            GoogleFonts.dmSerifText(fontWeight: FontWeight.w600).fontFamily);
  }

  static TextStyle bodyBold() {
    return TextStyle(
        color: AppColors.secondaryColor,
        fontSize: 16,
        height: 1,
        fontFamily:
            GoogleFonts.dmSerifText(fontWeight: FontWeight.bold).fontFamily);
  }
}
