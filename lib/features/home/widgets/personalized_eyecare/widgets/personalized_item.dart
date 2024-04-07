import 'package:flutter/material.dart';
import 'package:focal/common/constants/app_constants.dart';
import 'package:focal/common/styles/styles.dart';
import 'package:focal/common/widgets/app_card.dart';

class PersonalizedItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final Color color;
  const PersonalizedItem(
      {super.key,
      required this.icon,
      required this.title,
      required this.description,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      width: 300,
      cardGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.4, 1],
          colors: [AppColors.white, color]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 32,
            color: AppColors.secondaryColor,
          ),
          const Spacer(),
          Text(title, style: AppTextStyle.title2()),
          SizedBox(height: AppConstants.mediumPadding),
          Text(description, style: AppTextStyle.subtitle()),
        ],
      ),
    );
  }
}
