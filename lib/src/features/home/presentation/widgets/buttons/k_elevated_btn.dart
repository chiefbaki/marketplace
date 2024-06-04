import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class KElevatedBtn extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const KElevatedBtn({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            // maximumSize: const Size(200, 40),
            // minimumSize: const Size(200, 40),
            padding: REdgeInsets.symmetric(horizontal: 20, vertical: 11),
            backgroundColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        child: Text(text));
  }
}
