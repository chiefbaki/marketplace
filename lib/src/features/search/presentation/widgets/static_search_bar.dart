import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class StaticSearchBar extends StatelessWidget {
  const StaticSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _goToHomeSearch(context),
      child: Container(
        padding: REdgeInsets.all(15),
        decoration: BoxDecoration(
            color: AppColors.searchFieldColor,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Icon(
              Icons.search,
              size: 25.h,
              color: AppColors.violent,
            ),
            5.horizontalSpace,
            Expanded(
              child: Text(
                S.of(context).search,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: AppColors.grey),
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.mic,
                  color: AppColors.violent,
                  size: 25.h,
                ),
                10.horizontalSpace,
                Icon(
                  Icons.camera_alt,
                  color: AppColors.violent,
                  size: 25.h,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _goToHomeSearch(BuildContext context) {
    context.go("/home/search");
  }
}
