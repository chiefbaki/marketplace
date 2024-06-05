import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class ReadOnlyField extends StatelessWidget {
  final TextEditingController controller;
  const ReadOnlyField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: true,
      style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.hotPink),
      decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.lighterPink.withOpacity(0.1),
          enabledBorder: outlineBorder(),
          focusedBorder: outlineBorder()),
    );
  }

  OutlineInputBorder outlineBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8).r,
        borderSide: BorderSide(color: AppColors.hotPink));
  }
}
