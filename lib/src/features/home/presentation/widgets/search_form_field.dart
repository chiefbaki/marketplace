import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class SearchFormField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final TextInputAction textInputAction;
  const SearchFormField(
      {super.key,
      required this.controller,
      required this.focusNode,
      required this.textInputAction});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      focusNode: focusNode,
      style: Theme.of(context)
          .textTheme
          .bodyMedium!
          .copyWith(color: AppColors.black),
      controller: controller,
      cursorColor: AppColors.violent,
      maxLines: 1,
      decoration: InputDecoration(
          hintText: S.of(context).search,
          hintStyle: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.grey),
          contentPadding: REdgeInsets.all(20),
          prefixIcon: Icon(
            Icons.search,
            size: 30.h,
          ),
          prefixIconColor: Colors.grey,
          filled: true,
          fillColor: AppColors.searchFieldColor,
          enabledBorder: outlineBorder(),
          focusedBorder: outlineBorder()),
    );
  }

  OutlineInputBorder outlineBorder() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(15).r,
      borderSide: const BorderSide(color: AppColors.searchFieldColor));
}
