import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:focal/common/constants/app_constants.dart';
import 'package:focal/features/home/widgets/header/navigation_item.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const NavigationItem(label: "Eyeglasses"),
        SizedBox(width: AppConstants.defaultPadding),
        const NavigationItem(label: "Sunglasses"),
        SizedBox(width: AppConstants.defaultPadding),
        const NavigationItem(label: "Brands"),
        SizedBox(width: AppConstants.defaultPadding),
        const NavigationItem(label: "About"),
      ],
    );
  }
}
