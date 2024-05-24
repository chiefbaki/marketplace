import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/home/presentation/widgets/buttons/k_elevated_btn.dart';

class TabBarSecondItem extends StatelessWidget {
  const TabBarSecondItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            S.of(context).listIsEmpty,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: AppColors.black),
          ),
          const Spacer(),
          KElevatedBtn(
              widget: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    size: 20.h,
                  ),
                  4.horizontalSpace,
                  Text(
                    S.of(context).addAddress,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: AppColors.white,
                          fontWeight: FontWeight.w600,
                        ),
                  )
                ],
              ),
              onPressed: () {}),
          20.verticalSpace,
        ],
      ),
    );
  }
}
