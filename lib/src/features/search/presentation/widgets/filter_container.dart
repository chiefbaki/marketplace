import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/core/utils/extensions/extensions.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class FilterContainer extends StatelessWidget {
  final String text;
  final bool isSelected;
  const FilterContainer(
      {super.key, required this.text, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: REdgeInsets.only(right: 12),
      padding: REdgeInsets.all(10),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10).r,
          border: Border.all(
              color: isSelected ? AppColors.pinkSalt : AppColors.lightGrey,
              width: 2)),
      child: Center(
        child: Text(
          text,
          style:
              context.textTheme.titleMedium!.copyWith(color: AppColors.black),
        ),
      ),
    );
  }
}
