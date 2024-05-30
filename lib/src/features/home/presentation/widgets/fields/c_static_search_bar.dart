import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/utils/resources/resources.dart';

class CStaticSearchBar extends StatelessWidget {
  const CStaticSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 13, vertical: 13),
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(12).r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => _pushToSearch(context),
            child: Row(
              children: [
                SvgPicture.asset(Images.searchNormal),
                8.horizontalSpace,
                Text(
                  S.of(context).search,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: AppColors.darkGrey, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _pushToSearch(BuildContext context) {
    context.push("/home/search");
  }
}
