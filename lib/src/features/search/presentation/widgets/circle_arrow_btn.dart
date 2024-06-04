import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class CircleArrowBtn extends StatelessWidget {
  final VoidCallback onPressed;
  final String icon;
  const CircleArrowBtn(
      {super.key, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
      onTap: onPressed,
      child: Container(
        width: 50,
        height: 40,
        padding: REdgeInsets.all(5),
        decoration:
            const BoxDecoration(color: AppColors.white, shape: BoxShape.circle),
        child: SvgPicture.asset(
          icon,
          height: 30,
          color: AppColors.black,
        ),
      ),
    );
  }
}
