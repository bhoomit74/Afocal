import 'package:flutter/material.dart';
import 'package:focal/common/constants/app_constants.dart';
import 'package:focal/features/home/widgets/header/app_navigation_bar.dart';
import 'package:focal/features/home/widgets/header/home_action_menu.dart';
import 'package:focal/features/home/widgets/header/logo.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: AppConstants.defaultPadding,
          vertical: AppConstants.mediumPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: AppConstants.defaultPadding),
            child: Logo(),
          ),
          AppNavigationBar(),
          Padding(
            padding: EdgeInsets.only(right: AppConstants.defaultPadding),
            child: HomeActionMenu(),
          )
        ],
      ),
    );
  }
}
