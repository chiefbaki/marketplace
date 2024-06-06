import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/src/core/utils/extensions/extensions.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/core/utils/resources/resources.dart';

class SearchCategoryWidget extends StatelessWidget {
  const SearchCategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => goToCategoryResult(context),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(color: AppColors.white),
                ),
                12.horizontalSpace,
                Text(
                  "Для лица",
                  style: context.textTheme.bodyMedium!
                      .copyWith(color: AppColors.darkGrey),
                )
              ],
            ),
          ),
          SvgPicture.asset(Images.arrowRight)
        ],
      ),
    );
  }

  void goToCategoryResult(BuildContext context) {
    context.go("/search/categoryResult");
  }
}
