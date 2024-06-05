import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class LoginTextField extends StatelessWidget {
  final FocusNode focusNode;
  final TextEditingController controller;
  final GlobalKey formKey;
  const LoginTextField(
      {super.key,
      required this.focusNode,
      required this.controller,
      required this.formKey});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 281,
      child: Form(
        key: formKey,
        child: TextFormField(
          maxLength: 9,
          cursorColor: AppColors.black,
          focusNode: focusNode,
          controller: controller,
          validator: (value) {
            if (value!.isEmpty || !RegExp("^1?[5][0-9]{9}").hasMatch(value)) {
              return S.of(context).correctTheNumber;
            }
            return null;
          },
          keyboardType: TextInputType.phone,
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.black,
              decorationColor: AppColors.black),
          decoration: InputDecoration(
              counterText: "",
              errorMaxLines: 1,
              errorStyle: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                height: 0.001,
              ),
              contentPadding: REdgeInsets.all(16),
              filled: true,
              fillColor: AppColors.white,
              enabledBorder: outlineInputBorder(),
              focusedBorder: outlineInputBorder(),
              errorBorder: errorOutlineBorder(),
              focusedErrorBorder: errorOutlineBorder()),
        ),
      ),
    );
  }

  OutlineInputBorder errorOutlineBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.red),
        borderRadius: BorderRadius.circular(8).r);
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.lightGrey),
        borderRadius: BorderRadius.circular(8).r);
  }
}
