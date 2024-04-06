import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:focal/common/styles/styles.dart';
import 'package:focal/common/widgets/app_card.dart';

class ProductTag extends StatelessWidget {
  final String tag;
  final Color color;
  final Color tagColor;
  final Color borderColor;
  final BorderRadius? borderRadius;
  const ProductTag(
      {super.key,
      required this.tag,
      this.color = AppColors.white,
      this.borderRadius,
      this.tagColor = AppColors.secondaryColor,
      this.borderColor = AppColors.lightGrey});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      borderColor: borderColor,
      cardColor: color,
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
      borderRadius: borderRadius ?? BorderRadius.circular(8),
      child: Text(tag, style: AppTextStyle.captionMedium(color: tagColor)),
    );
  }
}
