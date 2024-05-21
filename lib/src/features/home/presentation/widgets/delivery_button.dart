import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class DeliveryButton extends StatelessWidget {
  const DeliveryButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            elevation: 0,
            overlayColor: AppColors.violent,
            maximumSize: const Size(250, 50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(color: AppColors.violent)),
            backgroundColor: AppColors.white,
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w)),
        child: Row(
          children: [
            Icon(
              Icons.add,
              color: AppColors.violent,
              size: 25.h,
            ),
            Text(
              "Добавить пункт выдачи",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: AppColors.violent),
            )
          ],
        ));
  }
}
