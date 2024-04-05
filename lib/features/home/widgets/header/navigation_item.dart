import 'package:flutter/material.dart';
import 'package:focal/common/constants/app_constants.dart';
import 'package:focal/common/styles/styles.dart';

class NavigationItem extends StatelessWidget {
  final String label;
  const NavigationItem({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(label, style: AppTextStyle.body()),
        const SizedBox(width: AppConstants.smallPadding),
        const Icon(
          Icons.keyboard_arrow_down_rounded,
          color: AppColors.secondaryColor,
          size: 20,
        )
      ],
    );
  }
}
