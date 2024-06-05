import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/core/utils/extensions/extensions.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class FilterBtn extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const FilterBtn({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        color: AppColors.whisper,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: REdgeInsets.all(10.0),
          child: Text(
            text,
            style: context.textTheme.bodyMedium!
                .copyWith(color: AppColors.charcoal),
          ),
        ),
      ),
    );
  }
}
