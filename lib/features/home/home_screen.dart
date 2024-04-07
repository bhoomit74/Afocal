import 'package:flutter/material.dart';
import 'package:focal/common/constants/app_constants.dart';
import 'package:focal/common/styles/styles.dart';
import 'package:focal/features/home/pages/home_page.dart';
import 'package:focal/features/home/widgets/header/header.dart';
import 'package:focal/features/home/widgets/new_arrivals/new_arrivals.dart';
import 'package:focal/features/home/widgets/personalized_eyecare/personalized_eye_care.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [AppColors.bgColor, AppColors.white],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: Scaffold(
          backgroundColor: AppColors.transparent,
          body: SafeArea(
              child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Header(),
                const Divider(height: 0.5, color: AppColors.green100),
                const HomePage(),
                SizedBox(height: AppConstants.defaultPadding),
                const NewArrivals(),
                SizedBox(height: AppConstants.defaultPadding * 2),
                const PersonalizedEyeCare(),
                SizedBox(height: AppConstants.defaultPadding * 2),
              ],
            ),
          ))),
    );
  }
}
