import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/utils/resources/resources.dart';

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
      mouseCursor: SystemMouseCursors.alias,
      scrollPadding: EdgeInsets.all(10),
      focusNode: focusNode,
      style: Theme.of(context)
          .textTheme
          .bodyMedium!
          .copyWith(color: AppColors.black),
      controller: controller,
      cursorColor: AppColors.primaryColor,
      maxLines: 1,
      decoration: InputDecoration(
              hintText: S.of(context).search,
              hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: AppColors.darkGrey, fontWeight: FontWeight.w400),
              contentPadding: REdgeInsets.all(20),
              filled: true,
              fillColor: AppColors.white,
              enabledBorder: outlineBorder(),
              focusedBorder: outlineBorder())
          .copyWith(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SvgPicture.asset(
            Images.searchNormal,
          ),
        ),
      ),
    );
  }

  OutlineInputBorder outlineBorder() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(12).r,
      borderSide: const BorderSide(color: AppColors.white));
}
