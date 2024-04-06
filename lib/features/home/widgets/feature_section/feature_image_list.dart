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
      child: ShaderMask(
        shaderCallback: (Rect rect) {
          return const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.orange,
              Colors.transparent,
              Colors.transparent,
            ],
            stops: [0.0, 0.2, 1.0], // 10% purple, 80% transparent, 10% purple
          ).createShader(rect);
        },
        blendMode: BlendMode.dstOut,
        child: AspectRatio(
          aspectRatio: 2.2.r,
          child: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(width: AppConstants.defaultPadding),
              RoundedNetworkImage(
                imageUrl:
                    "https://media.istockphoto.com/id/1048706896/photo/young-man-with-eyeglasses.jpg?s=1024x1024&w=is&k=20&c=v3g4P7Bw0G4ZVhIDS_13NLFaOWmOyx0euVnNCDZKS1Y=",
                width: 350.w,
                borderRadius: 16.r,
              ),
              SizedBox(width: AppConstants.defaultPadding),
              RoundedNetworkImage(
                imageUrl:
                    "https://media.istockphoto.com/id/1487059541/photo/beautiful-emotional-woman.jpg?s=1024x1024&w=is&k=20&c=0v4a1Gbkq8dVBGAYzVlsAY49lnwWvYsVE2ngLHdscVA=",
                width: 250.w,
                borderRadius: 16.r,
              ),
              SizedBox(width: AppConstants.defaultPadding),
              RoundedNetworkImage(
                imageUrl:
                    "https://media.istockphoto.com/id/1391504868/photo/trendy-young-bearded-man-looking-at-camera-in-white-studio.jpg?s=1024x1024&w=is&k=20&c=aEeuAg0-NVNZFBQnnl61WSW2ZHbYCbaSPts53LCeWPA=",
                width: 250.w,
                borderRadius: 16.r,
              ),
            ],
          ),
        ),
      ),
    );
  }
}