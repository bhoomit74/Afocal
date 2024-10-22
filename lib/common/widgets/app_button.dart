import 'package:flutter/material.dart';
import 'package:focal/common/constants/app_constants.dart';
import 'package:focal/common/styles/app_colors.dart';
import 'package:focal/common/styles/app_text_style.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color buttonColor;
  final Color textColor;
  final EdgeInsets? padding;
  final double? borderRadius;
  const AppButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.textColor = AppColors.white,
      this.buttonColor = AppColors.secondaryColor,
      this.borderRadius,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: buttonColor,
      padding: padding ??
          EdgeInsets.symmetric(
              horizontal: AppConstants.defaultPadding,
              vertical: AppConstants.mediumPadding),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              borderRadius ?? AppConstants.buttonBorderRadius)),
      child: Text(text, style: AppTextStyle.subtitle(color: textColor)),
    );
  }
}
