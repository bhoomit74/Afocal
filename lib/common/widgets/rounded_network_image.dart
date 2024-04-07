import 'package:flutter/material.dart';
import 'package:focal/common/constants/app_constants.dart';

class RoundedNetworkImage extends StatelessWidget {
  final double borderRadius;
  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;
  const RoundedNetworkImage(
      {super.key,
      required this.imageUrl,
      this.borderRadius = AppConstants.buttonBorderRadius,
      this.width,
      this.height,
      this.fit = BoxFit.cover});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image.asset(imageUrl, fit: fit, height: height, width: width),
    );
  }
}
