import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class KTextBtn extends StatelessWidget {
  final Widget title;
  final Function() onPressed;
  final TextTheme? style;
  const KTextBtn(
      {super.key, required this.onPressed, required this.title, this.style});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            overlayColor: AppColors.violent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10).r)),
        child: title);
  }
}
