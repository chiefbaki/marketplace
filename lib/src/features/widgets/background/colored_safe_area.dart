import 'package:flutter/material.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class ColoredSafeArea extends StatelessWidget {
  final Widget child;
  final Color color;
  const ColoredSafeArea(
      {super.key, required this.child, this.color = AppColors.violent});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color),
      child: SafeArea(child: child),
    );
  }
}
