import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:marketplace/src/core/utils/extensions/extensions.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

typedef FutureVoidCallBack = Future<void> Function();

class CElevatedBtn extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final FutureVoidCallBack? asyncOnPressed;
  const CElevatedBtn(
      {super.key,
      required this.text,
      required this.onPressed,
      this.asyncOnPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: asyncOnPressed ?? onPressed,
          style: ElevatedButton.styleFrom(
              elevation: 0,
              shadowColor: AppColors.lightGrey.withOpacity(0.4),
              overlayColor: AppColors.pinkSalt,
              padding: REdgeInsets.symmetric(vertical: 20, horizontal: 100),
              backgroundColor: AppColors.hotPink.withOpacity(0.5),
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
