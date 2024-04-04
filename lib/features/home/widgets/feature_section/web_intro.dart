import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:focal/common/constants/app_constants.dart';
import 'package:focal/common/styles/app_text_style.dart';
import 'package:focal/common/widgets/app_button.dart';
import 'package:focal/common/widgets/app_outline_button.dart';

class WebIntro extends StatelessWidget {
  const WebIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
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
              )
            ],
          ),
        ),
        Flexible(
          flex: 3,
          child: ListView(
            shrinkWrap: true,
            children: [Text("list")],
          ),
        )
      ],
    );
  }
}
