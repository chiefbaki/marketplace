import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class OTP extends StatelessWidget {
  final TextEditingController controller;
  const OTP({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 73.w,
      height: 73.h,
      child: Form(
        key: key,
        child: TextFormField(
          controller: controller,
          textInputAction: TextInputAction.continueAction,
          keyboardType: TextInputType.number,
          keyboardAppearance: Brightness.light,
          maxLength: 1,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
          textAlign: TextAlign.center,
          cursorColor: AppColors.hotPink,
          style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.black),
          maxLines: 1,
          autofocus: true,
          onSaved: (value) {},
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
          decoration: InputDecoration(
              counterText: "",
              enabledBorder: outlineBorder(AppColors.lightGrey),
              focusedBorder: outlineBorder(AppColors.hotPink),
              errorBorder: outlineBorder(AppColors.red),
              focusedErrorBorder: outlineBorder(AppColors.red)),
        ),
      ),
    );
  }

  OutlineInputBorder outlineBorder(Color color) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12).r,
        borderSide: BorderSide(color: color));
  }
}
