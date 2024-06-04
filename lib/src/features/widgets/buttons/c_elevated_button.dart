import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/core/utils/extensions/extensions.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class CElevatedBtn extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CElevatedBtn({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              elevation: 0,
              shadowColor: AppColors.lightGrey.withOpacity(0.4),
              overlayColor: AppColors.hotPink.withOpacity(0.5),
              padding: REdgeInsets.symmetric(vertical: 20, horizontal: 100),
              backgroundColor: AppColors.pinkSalt,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          child: Text(
            text,
            style: context.textTheme.titleMedium!
                .copyWith(color: AppColors.white, fontWeight: FontWeight.w600),
          )),
    );
  }
}
