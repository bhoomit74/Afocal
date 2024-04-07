import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:focal/common/constants/app_images.dart';

class AppConstants {
  static double defaultPadding = 56.r;
  static double mediumPadding = 28.r;
  static double smallPadding = 14.r;
  static const double buttonBorderRadius = 32;
  static const double cardBorderRadius = 16;

  //Lists
  static List<String> featuredImages = [
    AppImages.model4,
    AppImages.model5,
    AppImages.model3,
  ];
  static List<String> newArrivals = [
    AppImages.arrivalBlack,
    AppImages.arrivalGreen,
    AppImages.arrivalOrange,
    AppImages.arrivalGrey,
    AppImages.arrivalBlue,
    AppImages.arrivalRed
  ];
}
