import 'package:flutter/material.dart';
import 'package:focal/common/constants/app_constants.dart';
import 'package:focal/common/styles/styles.dart';
import 'package:focal/common/widgets/app_button.dart';
import 'package:focal/common/widgets/app_outline_button.dart';
import 'package:focal/features/home/widgets/feature_section/feature_image_list.dart';
import 'package:focal/features/home/widgets/feature_section/rating_view.dart';

class WebIntro extends StatelessWidget {
  const WebIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          flex: 3,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Find your perfect eyewear look",
                  style: AppTextStyle.title1()),
              const SizedBox(height: AppConstants.defaultPadding),
              Padding(
                padding: const EdgeInsets.only(
                    right: AppConstants.defaultPadding * 2),
                child: Text(
                    "We are all about finding you that one perfect pair, Experience the different a perfect pair makes, Let's find yours together.",
                    style: AppTextStyle.subtitle()),
              ),
              const SizedBox(height: AppConstants.defaultPadding),
              Row(
                children: [
                  AppButton(text: "Explore shop", onPressed: () {}),
                  const SizedBox(width: AppConstants.smallPadding),
                  AppOutlineButton(text: "Use Your Benefits", onPressed: () {}),
                ],
              ),
              const SizedBox(height: AppConstants.defaultPadding),
              const RatingView()
            ],
          ),
        ),
        const Flexible(
          flex: 4,
          child: FeatureImageList(),
        )
      ],
    );
  }
}
