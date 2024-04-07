import 'package:flutter/material.dart';
import 'package:focal/common/constants/app_constants.dart';
import 'package:focal/common/styles/styles.dart';

class AppCard extends StatelessWidget {
  final double? height;
  final double? width;
  final Color cardColor;
  final Gradient? cardGradient;
  final Color borderColor;
  final BorderRadius? borderRadius;
  final Widget? child;
  final EdgeInsets? padding;
  const AppCard(
      {super.key,
      this.height,
      this.width,
      this.cardColor = AppColors.cardBgColor,
      this.cardGradient,
      this.borderColor = AppColors.transparent,
      this.borderRadius,
      this.child,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: cardColor,
          gradient: cardGradient,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, spreadRadius: 1, blurRadius: 5)
          ],
          borderRadius: borderRadius ??
              BorderRadius.circular(AppConstants.cardBorderRadius),
          border: Border.all(color: borderColor, width: 1)),
      child: Padding(
        padding: padding ?? EdgeInsets.all(AppConstants.mediumPadding),
        child: child,
      ),
    );
  }
}
