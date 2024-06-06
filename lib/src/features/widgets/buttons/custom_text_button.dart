import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/core/utils/extensions/extensions.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class CTextBtn extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  final TextTheme? style;
  const CTextBtn(
      {super.key, required this.onPressed, required this.title, this.style});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            padding: EdgeInsets.zero,
            overlayColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10).r)),
        child: Text(
          title,
          style: context.textTheme.titleMedium!.copyWith(
              color: onPressed != null ? AppColors.black : AppColors.grey),
        ),
      ),
    );
  }
}
