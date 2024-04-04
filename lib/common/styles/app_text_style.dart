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

  static TextStyle body({Color color = AppColors.secondaryColor}) {
    return TextStyle(
        color: color,
        fontSize: 20,
        height: 1,
        fontFamily: GoogleFonts.roboto(fontWeight: FontWeight.w400).fontFamily);
  }

  static TextStyle bodyMedium({Color color = AppColors.secondaryColor}) {
    return TextStyle(
        color: color,
        fontSize: 20,
        height: 1,
        fontFamily: GoogleFonts.roboto(fontWeight: FontWeight.w600).fontFamily);
  }

  static TextStyle bodyBold({Color color = AppColors.secondaryColor}) {
    return TextStyle(
        color: color,
        fontSize: 20,
        height: 1,
        fontFamily: GoogleFonts.roboto(fontWeight: FontWeight.bold).fontFamily);
  }

  static TextStyle subtitle({Color color = AppColors.secondaryColor}) {
    return TextStyle(
        color: color,
        fontSize: 16,
        height: 1,
        fontFamily: GoogleFonts.roboto(fontWeight: FontWeight.w400).fontFamily);
  }

  static TextStyle subtitleMedium({Color color = AppColors.secondaryColor}) {
    return TextStyle(
        color: color,
        fontSize: 16,
        height: 1,
        fontFamily: GoogleFonts.roboto(fontWeight: FontWeight.w600).fontFamily);
  }

  static TextStyle subtitleBold({Color color = AppColors.secondaryColor}) {
    return TextStyle(
        color: color,
        fontSize: 16,
        height: 1,
        fontFamily: GoogleFonts.roboto(fontWeight: FontWeight.bold).fontFamily);
  }
}
