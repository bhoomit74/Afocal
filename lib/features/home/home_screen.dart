import 'package:flutter/material.dart';
import 'package:focal/common/styles/styles.dart';
import 'package:focal/features/home/widgets/header/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [AppColors.bgColor, AppColors.white],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: const Scaffold(
          backgroundColor: AppColors.transparent,
          body: SafeArea(
              child: Column(
            children: [
              Header(),
              Divider(height: 0.5, color: AppColors.green100)
            ],
          ))),
    );
  }
}
