import 'package:flutter/material.dart';
import 'package:focal/common/styles/app_colors.dart';
import 'package:focal/common/styles/app_text_style.dart';

class AppOutlineButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color textColor;
  final Color borderColor;
  final EdgeInsets padding;
  final double borderRadius;
  final double borderWidth;
  const AppOutlineButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.textColor = AppColors.secondaryColor,
      this.borderColor = AppColors.secondaryColor,
      this.padding = const EdgeInsets.all(24),
      this.borderRadius = 32,
      this.borderWidth = 1.2});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: AppColors.transparent,
      elevation: 0,
      padding: padding,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor, width: borderWidth),
          borderRadius: BorderRadius.circular(borderRadius)),
      child: Text(text, style: AppTextStyle.body(color: textColor)),
    );
  }
}
