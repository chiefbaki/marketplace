import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class LoginTextField extends StatelessWidget {
  final FocusNode focusNode;
  final TextEditingController controller;
  final GlobalKey formKey;
  final TextInputType textInputType;
  final TextInputAction? textInputAction;
  final String? hintText;
  const LoginTextField(
      {super.key,
      required this.focusNode,
      required this.controller,
      required this.formKey,
      required this.textInputType,
      this.hintText,
      this.textInputAction});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: TextFormField(
        maxLength: 15,
        textInputAction: textInputAction,
        cursorColor: AppColors.black,
        inputFormatters: [LengthLimitingTextInputFormatter(15)],
        focusNode: focusNode,
        controller: controller,
        validator: (value) {
          if (value!.isEmpty || !RegExp("^1?[5][0-9]{9}").hasMatch(value)) {
            return S.of(context).correctTheNumber;
          }
          return null;
        },
        keyboardType: textInputType,
        style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
            decorationColor: AppColors.black),
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.grey,
                decorationColor: AppColors.black),
            counterText: "",
            errorMaxLines: 1,
            errorStyle: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
            contentPadding: REdgeInsets.all(16),
            filled: true,
            fillColor: AppColors.white,
            enabledBorder: outlineInputBorder(),
            focusedBorder: outlineInputBorder(),
            errorBorder: errorOutlineBorder(),
            focusedErrorBorder: errorOutlineBorder()),
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
