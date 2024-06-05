import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/utils/extensions/extensions.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/search/presentation/widgets/custom_range_slider.dart';
import 'package:marketplace/src/features/search/presentation/widgets/filter_btn.dart';
import 'package:marketplace/src/features/widgets/background/colored_safe_area.dart';
import 'package:marketplace/src/features/widgets/buttons/c_elevated_button.dart';
import 'package:marketplace/src/features/widgets/buttons/c_icon_button.dart';
import 'package:marketplace/src/features/widgets/buttons/c_text_button.dart';
import 'package:marketplace/src/utils/resources/resources.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredSafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              leading: CButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    Images.arrowLeft,
                    height: 25.h,
                    color: AppColors.grey,
                  )),
              title: Text(
                S.of(context).search,
                style: context.textTheme.titleLarge!.copyWith(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black),
              ),
              actions: [
                Padding(
                  padding: REdgeInsets.only(right: 16),
                  child: CTextBtn(onPressed: () {}, title: S.of(context).reset),
                )
              ],
            ),
            SliverPadding(
              padding: REdgeInsets.symmetric(
                horizontal: 16,
                vertical: 32,
              ),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FilterBtn(
                      onPressed: () {},
                      text: S.of(context).withDiscount,
                    ),
                    32.verticalSpace,
                    Text(
                      S.of(context).brand,
                      style: context.textTheme.bodyLarge!.copyWith(
                          color: AppColors.black,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    23.verticalSpace,
                    SizedBox(
                        height: 90.h,
                        child: GridView.builder(
                            itemCount: 8,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    childAspectRatio:
                                        context.width / (context.height / 3.5),
                                    mainAxisSpacing: 10,
                                    crossAxisSpacing: 32),
                            itemBuilder: (_, index) =>
                                FilterBtn(onPressed: () {}, text: "вцв"))),
                    32.verticalSpace,
                    Text(S.of(context).brand,
                        style: context.textTheme.bodyLarge!.copyWith(
                            color: AppColors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600)),
                    24.verticalSpace,
                    Row(
                      children: [
                        SizedBox(
                            child: FilterBtn(
                                onPressed: () {}, text: "от 500 сом")),
                        SizedBox(
                            child:
                                FilterBtn(onPressed: () {}, text: "от 500 сом"))
                      ],
                    ),
                    24.verticalSpace,
                    const CRangeSlider(),
                    50.verticalSpace,
                    Text(S.of(context).manufacture,
                        style: context.textTheme.bodyLarge!.copyWith(
                            color: AppColors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600)),
                    24.verticalSpace,
                    Row(
                      children: [
                        SizedBox(
                            child: FilterBtn(
                                onPressed: () {}, text: "от 500 сом")),
                        SizedBox(
                            child:
                                FilterBtn(onPressed: () {}, text: "от 500 сом"))
                      ],
                    ),
                    32.verticalSpace,
                    CElevatedBtn(text: "Показать 35 шт", onPressed: () {})
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
