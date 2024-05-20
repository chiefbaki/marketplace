import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class KElevatedBtn extends StatelessWidget {
  const KElevatedBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            backgroundColor: AppColors.violent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_cart,
              size: 20.h,
            ),
            4.horizontalSpace,
            Text(
              "28 Май",
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: AppColors.white,
                    fontWeight: FontWeight.w600,
                  ),
            )
          ],
        ));
  }
}
