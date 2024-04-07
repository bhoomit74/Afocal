import 'package:flutter/material.dart';
import 'package:focal/common/constants/app_constants.dart';
import 'package:focal/common/constants/app_images.dart';
import 'package:focal/common/styles/styles.dart';
import 'package:focal/common/widgets/rounded_network_image.dart';

class RatingView extends StatelessWidget {
  const RatingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(48),
                  border: Border.all(color: AppColors.white)),
              child: const RoundedNetworkImage(
                imageUrl: AppImages.model1,
                fit: BoxFit.cover,
                width: 48,
                height: 48,
                borderRadius: 48,
              ),
            ),
            Transform.translate(
              offset: const Offset(-20, 0),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(48),
                      border: Border.all(color: AppColors.white)),
                  child: const RoundedNetworkImage(
                    imageUrl: AppImages.model3,
                    width: 48,
                    height: 48,
                    borderRadius: 48,
                  )),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("20K+", style: AppTextStyle.bodyBold()),
                Text("Satisfied customer", style: AppTextStyle.caption()),
              ],
            )
          ],
        ),
        SizedBox(height: AppConstants.smallPadding),
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.star_rounded, color: AppColors.greenColor),
              const SizedBox(width: 2),
              Text(
                "Trustpilot",
                style: AppTextStyle.captionBold(),
              ),
              SizedBox(width: AppConstants.smallPadding / 2),
              const VerticalDivider(
                color: AppColors.bgColor,
                width: 1,
                thickness: 1,
              ),
              SizedBox(width: AppConstants.smallPadding / 2),
              const Icon(Icons.star_purple500_outlined,
                  color: AppColors.greenColor),
              const Icon(Icons.star_purple500_outlined,
                  color: AppColors.greenColor),
              const Icon(Icons.star_purple500_outlined,
                  color: AppColors.greenColor),
              const Icon(Icons.star_purple500_outlined,
                  color: AppColors.greenColor),
              const Icon(Icons.star_half_outlined, color: AppColors.greenColor),
              SizedBox(width: AppConstants.smallPadding),
              Text("15,008", style: AppTextStyle.subtitleMedium()),
              SizedBox(width: AppConstants.smallPadding / 2),
              const VerticalDivider(
                color: AppColors.bgColor,
                width: 1,
                thickness: 1,
              ),
              SizedBox(width: AppConstants.smallPadding / 2),
              Text("Excellent", style: AppTextStyle.subtitleBold()),
            ],
          ),
        )
      ],
    );
  }
}
