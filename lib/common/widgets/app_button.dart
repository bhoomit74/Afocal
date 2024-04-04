import 'package:flutter/material.dart';
import 'package:focal/common/styles/app_colors.dart';
import 'package:focal/common/styles/app_text_style.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color buttonColor;
  final Color textColor;
  final EdgeInsets padding;
  final double borderRadius;
  const AppButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.textColor = AppColors.white,
      this.buttonColor = AppColors.secondaryColor,
      this.padding = const EdgeInsets.all(24),
      this.borderRadius = 32});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: buttonColor,
      padding: padding,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius)),
      child: Text(text, style: AppTextStyle.body(color: textColor)),
    );
  }
}
