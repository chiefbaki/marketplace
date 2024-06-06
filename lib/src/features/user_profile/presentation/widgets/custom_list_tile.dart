import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/utils/extensions/extensions.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/core/utils/resources/resources.dart';

class CListTile extends StatelessWidget {
  const CListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        debugPrint("work");
      },
      splashColor: AppColors.grey.withOpacity(0.4),
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 32.w,
        height: 32.h,
        decoration: const BoxDecoration(color: AppColors.white),
      ),
      title: Text(
        S.of(context).myPaymentMethods,
        style: context.textTheme.bodyLarge!.copyWith(color: AppColors.black),
      ),
      subtitle: Text(
        "Visa",
        style: context.textTheme.labelMedium!
            .copyWith(color: AppColors.darkGrey, height: 1.5),
      ),
      trailing: SvgPicture.asset(
        Images.arrowRight,
        height: 24.h,
      ),
    );
  }
}
