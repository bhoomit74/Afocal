import 'package:flutter/material.dart';
import 'package:focal/common/styles/styles.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Focal",
      style: TextStyle(
          color: AppColors.secondaryColor,
          fontSize: 40,
          fontFamily:
              GoogleFonts.museoModerno(fontWeight: FontWeight.w400).fontFamily),
    );
  }
}
