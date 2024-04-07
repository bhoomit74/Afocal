import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:focal/common/constants/app_constants.dart';
import 'package:focal/common/styles/styles.dart';
import 'package:focal/features/home/widgets/personalized_eyecare/widgets/personalized_item.dart';
import 'package:icons_plus/icons_plus.dart';

class PersonalizedEyeCare extends StatelessWidget {
  const PersonalizedEyeCare({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Personalized\neyecare for you",
            style: AppTextStyle.title1(), textAlign: TextAlign.center),
        SizedBox(height: AppConstants.mediumPadding),
        Text(
            "Select one card to find the perfect style or lenses, according to your needs.",
            style: AppTextStyle.subtitle(),
            textAlign: TextAlign.center),
        SizedBox(height: AppConstants.defaultPadding),
        SizedBox(
          height: 250,
          child: Center(
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                const PersonalizedItem(
                  icon: FontAwesome.display_solid,
                  title: "Digital Lifestyle",
                  description:
                      "Enhance your digital lifestyle with precision eyeglasses for strain-free vision",
                  color: AppColors.green100,
                ),
                SizedBox(
                  width: AppConstants.mediumPadding,
                ),
                const PersonalizedItem(
                  icon: FontAwesome.gamepad_solid,
                  title: "Great Gamer",
                  description:
                      "Level up your gaming experience with glasses designed for great gamer in you",
                  color: AppColors.blue100,
                ),
                SizedBox(
                  width: AppConstants.mediumPadding,
                ),
                const PersonalizedItem(
                  icon: FontAwesome.tree_solid,
                  title: "Outdoor lover",
                  description:
                      "Explore the great outdoor with clarity and comfort, Eyewear for the outdoor enthusiast",
                  color: AppColors.orange100,
                ),
                SizedBox(
                  width: AppConstants.mediumPadding,
                ),
                const PersonalizedItem(
                  icon: FontAwesome.car_rear_solid,
                  title: "Always Driving",
                  description:
                      "Navigate every journey: Eyewear companion for the always driving enthusiast",
                  color: AppColors.green300,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
