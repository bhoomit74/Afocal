import 'package:flutter/material.dart';
import 'package:focal/common/constants/app_constants.dart';
import 'package:focal/common/styles/app_colors.dart';
import 'package:focal/common/styles/app_text_style.dart';

class AppOutlineButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color textColor;
  final Color borderColor;
  final EdgeInsets? padding;
  final double? borderRadius;
  final double borderWidth;
  const AppOutlineButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.textColor = AppColors.secondaryColor,
      this.borderColor = AppColors.secondaryColor,
      this.padding,
      this.borderRadius,
      this.borderWidth = 1});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: AppColors.white,
      elevation: 0,
      padding: padding ??
          EdgeInsets.symmetric(
              horizontal: AppConstants.defaultPadding,
              vertical: AppConstants.mediumPadding),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor, width: borderWidth),
          borderRadius: BorderRadius.circular(
              borderRadius ?? AppConstants.buttonBorderRadius)),
      child: Text(text, style: AppTextStyle.subtitle(color: textColor)),
    );
  }
}
