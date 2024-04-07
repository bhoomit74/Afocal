import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:focal/common/constants/app_constants.dart';
import 'package:focal/common/styles/styles.dart';
import 'package:focal/features/home/widgets/new_arrivals/widgets/new_arrivals_item.dart';

class NewArrivals extends StatelessWidget {
  const NewArrivals({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppConstants.defaultPadding * 2,
              vertical: AppConstants.defaultPadding),
          child: Text("New Arrivals", style: AppTextStyle.title1()),
        ),
        SizedBox(
          height: 350,
          child: ShaderMask(
            blendMode: BlendMode.dstOut,
            shaderCallback: (bounds) => const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [
                  0.0,
                  0.06,
                  0.94,
                  1
                ],
                colors: [
                  AppColors.white,
                  AppColors.transparent,
                  AppColors.transparent,
                  AppColors.white
                ]).createShader(bounds),
            child: ListView.separated(
              itemCount: AppConstants.newArrivals.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                      left: index == 0 ? AppConstants.defaultPadding * 2 : 0,
                      right: index == AppConstants.newArrivals.length - 1
                          ? AppConstants.defaultPadding * 2
                          : 0),
                  child:
                      NewArrivalsItem(imgUrl: AppConstants.newArrivals[index]),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: AppConstants.mediumPadding);
              },
            ),
          ),
        )
      ],
    );
  }
}
