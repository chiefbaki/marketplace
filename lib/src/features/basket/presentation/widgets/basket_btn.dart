import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class AddSubBtn extends StatelessWidget {
  final VoidCallback onPressed;

  const AddSubBtn({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        // hoverColor: AppColors.red.withOpacity(0.2), // Цвет при наведении
        // splashColor: AppColors.red.withOpacity(0.4), // Цвет при нажатии
        // highlightColor: AppColors.red.withOpacity(0.3),
        child: Container(
            padding: REdgeInsets.all(1),
            decoration: const BoxDecoration(
                color: AppColors.white, shape: BoxShape.circle),
            child: Icon(
              Icons.add,
              size: 24.h,
            )),
      ),
    );
  }
}
