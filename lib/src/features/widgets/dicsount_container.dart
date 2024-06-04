import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/core/utils/extensions/extensions.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class DiscountContainer extends StatelessWidget {
  const DiscountContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
          color: AppColors.pinkSalt, borderRadius: BorderRadius.circular(4).r),
      child: Text(
        "20%",
        style: context.textTheme.labelMedium!
            .copyWith(fontWeight: FontWeight.w500, color: AppColors.hotPink),
      ),
    );
  }
}
