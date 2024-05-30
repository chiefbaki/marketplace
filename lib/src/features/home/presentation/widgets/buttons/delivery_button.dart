import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class TransparentButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  const TransparentButton(
      {super.key, required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            elevation: 0,
            overlayColor: AppColors.primaryColor,
            maximumSize: const Size(250, 50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: AppColors.primaryColor)),
            backgroundColor: AppColors.white,
            padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 10.w)),
        child: Center(
          child: child,
        ));
  }
}
