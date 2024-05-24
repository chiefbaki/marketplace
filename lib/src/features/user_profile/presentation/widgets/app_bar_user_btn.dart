import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/utilsresources/resources.dart';

class AppBarUserBtn extends StatelessWidget {
  const AppBarUserBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        padding: EdgeInsets.zero,
        style: IconButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: Size.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        onPressed: () {},
        icon: Row(
          children: [
            CircleAvatar(
              radius: 16.r,
              backgroundImage: const AssetImage(Images.card),
            ),
            20.horizontalSpace,
            Text(
              "Ислам",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: AppColors.violent),
            )
          ],
        ));
  }
}
