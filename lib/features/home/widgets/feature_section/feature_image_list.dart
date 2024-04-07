import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:focal/common/constants/app_constants.dart';
import 'package:focal/common/widgets/rounded_network_image.dart';

class FeatureImageList extends StatelessWidget {
  const FeatureImageList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: AppConstants.defaultPadding),
      child: AspectRatio(
        aspectRatio: 2.2.r,
        child: ShaderMask(
          blendMode: BlendMode.dstOut,
          shaderCallback: (Rect rect) {
            return const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.white,
                Colors.transparent,
                Colors.transparent,
              ],
              stops: [0.0, 0.1, 1.0],
            ).createShader(rect);
          },
          child: ListView.separated(
            itemCount: AppConstants.featuredImages.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                    left: index == 0 ? AppConstants.mediumPadding : 0),
                child: RoundedNetworkImage(
                  imageUrl: AppConstants.featuredImages[index],
                  width: index == 0 ? 350.w : 300.w,
                  borderRadius: AppConstants.cardBorderRadius,
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(width: AppConstants.defaultPadding);
            },
          ),
        ),
      ),
    );
  }
}
