import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/utils/resources/resources.dart';

class ProdListScroll extends StatelessWidget {
  const ProdListScroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10).r,
          border: Border.all(color: AppColors.pinkSalt, width: 2)),
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Image.asset(
          Images.prod2,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
