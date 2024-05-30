import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class TabItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isSelected;
  const TabItem(
      {super.key,
      required this.icon,
      required this.text,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: isSelected ? AppColors.primaryColor : Colors.grey,
        ),
        15.horizontalSpace,
        Text(
          text,
        ),
      ],
    );
  }
}
