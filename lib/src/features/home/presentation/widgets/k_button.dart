import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class KButton extends StatelessWidget {
  final Function() onPressed;
  final IconData icon;
  final Color color;
  const KButton(
      {super.key,
      required this.onPressed,
      required this.icon,
      this.color = AppColors.violent});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        padding: EdgeInsets.zero,
        style: IconButton.styleFrom(padding: EdgeInsets.zero),
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
          size: 28.h,
        ));
  }
}
