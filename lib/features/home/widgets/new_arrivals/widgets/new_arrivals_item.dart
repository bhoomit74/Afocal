import 'package:flutter/material.dart';
import 'package:focal/common/styles/styles.dart';
import 'package:focal/common/widgets/app_card.dart';
import 'package:focal/features/home/widgets/new_arrivals/widgets/product_tag.dart';

class NewArrivalsItem extends StatelessWidget {
  final String imgUrl;
  const NewArrivalsItem({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: AppCard(
        height: 350,
        width: 300,
        cardColor: AppColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ProductTag(tag: "Best sellers"),
                Text("3 Colours", style: AppTextStyle.captionMedium())
              ],
            ),
            const Spacer(),
            Image.asset(
              width: 300,
              height: 200,
              fit: BoxFit.cover,
              imgUrl,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("AP2528 Optics", style: AppTextStyle.captionMedium()),
                    Text("Alex Perry", style: AppTextStyle.captionMedium()),
                    Text("\$187.99", style: AppTextStyle.bodyBold()),
                  ],
                ),
                AppCard(
                  cardColor: AppColors.white,
                  padding: const EdgeInsets.all(4),
                  borderRadius: BorderRadius.circular(8),
                  child: Icon(Icons.qr_code_scanner_rounded,
                      color: AppColors.secondaryColor.withOpacity(0.5)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
