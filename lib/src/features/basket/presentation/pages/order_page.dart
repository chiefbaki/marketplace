import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/utils/extensions/extensions.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/widgets/background/colored_safe_area.dart';
import 'package:marketplace/src/features/widgets/buttons/c_elevated_button.dart';
import 'package:marketplace/src/utils/resources/resources.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredSafeArea(
      child: Scaffold(
        body: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              centerTitle: false,
              pinned: true,
              title: Text(
                S.of(context).orderProduct,
                style: context.textTheme.titleLarge!.copyWith(
                    color: AppColors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SliverPadding(
              padding: REdgeInsets.fromLTRB(16, 24, 16, 0),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).delivery,
                      style: context.textTheme.bodyMedium!
                          .copyWith(color: AppColors.grey),
                    ),
                    4.verticalSpace,
                    Text(
                      "Бишкек, Древесная 56",
                      style: context.textTheme.titleMedium!
                          .copyWith(color: AppColors.black),
                    ),
                    24.verticalSpace,
                    Text(
                      S.of(context).theOrder,
                      style: context.textTheme.bodyMedium!
                          .copyWith(color: AppColors.grey),
                    ),
                    4.verticalSpace,
                    Text(
                      "11 июня",
                      style: context.textTheme.titleMedium!
                          .copyWith(color: AppColors.black),
                    ),
                    4.verticalSpace,
                    Text(
                      "Доставка 196 сом, бесплатно от 1500 сом",
                      style: context.textTheme.titleMedium!
                          .copyWith(color: AppColors.hotPink),
                    ),
                    12.verticalSpace,
                    Row(
                      children: [
                        Image.asset(Images.prod2),
                        8.horizontalSpace,
                        Image.asset(Images.prod2)
                      ],
                    ),
                    24.verticalSpace,
                    Text(
                      S.of(context).paymentMethods,
                      style: context.textTheme.bodyMedium!
                          .copyWith(color: AppColors.grey),
                    ),
                    12.verticalSpace,
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            padding: REdgeInsets.symmetric(
                                horizontal: 18, vertical: 10),
                            backgroundColor: AppColors.primaryColor,
                            elevation: 0,
                            animationDuration:
                                const Duration(milliseconds: 200),
                            overlayColor: AppColors.hotPink.withOpacity(0.8),
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10).r),
                            side: const BorderSide(
                                color: AppColors.white, width: 3)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.add,
                              size: 18.h,
                              color: AppColors.black,
                            ),
                            12.horizontalSpace,
                            Text(
                              S.of(context).linkACard,
                              style: context.textTheme.titleMedium!
                                  .copyWith(color: AppColors.black),
                            )
                          ],
                        )),
                    24.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          S.of(context).total,
                          style: context.textTheme.bodyMedium!
                              .copyWith(color: AppColors.black),
                        ),
                        Text(
                          "2300 сом",
                          style: context.textTheme.titleMedium!
                              .copyWith(color: AppColors.black),
                        ),
                      ],
                    ),
                    12.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "2 товара на сумму",
                          style: context.textTheme.bodyMedium!
                              .copyWith(color: AppColors.grey),
                        ),
                        Text(
                          "1460 сом",
                          style: context.textTheme.bodyMedium!
                              .copyWith(color: AppColors.grey),
                        ),
                      ],
                    ),
                    12.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          S.of(context).discount,
                          style: context.textTheme.bodyMedium!
                              .copyWith(color: AppColors.grey),
                        ),
                        Text(
                          "300 сом",
                          style: context.textTheme.bodyMedium!
                              .copyWith(color: AppColors.grey),
                        ),
                      ],
                    ),
                    12.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          S.of(context).deliveryPrice,
                          style: context.textTheme.bodyMedium!
                              .copyWith(color: AppColors.grey),
                        ),
                        Text(
                          "1460 сом",
                          style: context.textTheme.bodyMedium!
                              .copyWith(color: AppColors.grey),
                        ),
                      ],
                    ),
                    60.verticalSpace,
                    CElevatedBtn(text: "Привязать карту", onPressed: () {})
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
