import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:focal/features/home/widgets/header/navigation_item.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        NavigationItem(label: "Eyeglasses"),
        SizedBox(width: 40),
        NavigationItem(label: "Sunglasses"),
        SizedBox(width: 40),
        NavigationItem(label: "Brands"),
        SizedBox(width: 40),
        NavigationItem(label: "About"),
      ],
    );
  }
}
