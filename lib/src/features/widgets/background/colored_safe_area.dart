import 'package:flutter/material.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class ColoredSafeArea extends StatelessWidget {
  final Widget child;

  const ColoredSafeArea({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
      ),
      child: SafeArea(child: child),
    );
  }
}
