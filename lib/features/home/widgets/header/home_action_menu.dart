import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:focal/common/constants/app_constants.dart';
import 'package:focal/common/styles/styles.dart';

class HomeActionMenu extends StatelessWidget {
  const HomeActionMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.mediumPadding,
          vertical: AppConstants.smallPadding),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(AppConstants.buttonBorderRadius),
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Sign in",
                style: AppTextStyle.subtitle(color: AppColors.white)),
            const VerticalDivider(
              width: AppConstants.mediumPadding,
              color: AppColors.bgColor,
              thickness: 0.1,
            ),
            const Icon(
              CupertinoIcons.search,
              color: AppColors.white,
              size: 24,
            ),
            const VerticalDivider(
              color: AppColors.bgColor,
              width: AppConstants.mediumPadding,
              thickness: 0.1,
            ),
            const Icon(
              CupertinoIcons.bag,
              color: AppColors.white,
              size: 24,
            ),
          ],
        ),
      ),
    );
  }
}
