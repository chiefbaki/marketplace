import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/home/presentation/widgets/buttons/k_button.dart';
import 'package:marketplace/src/features/home/presentation/widgets/buttons/k_elevated_btn.dart';
import 'package:marketplace/src/features/widgets/background/colored_container.dart';
import 'package:marketplace/src/features/widgets/buttons/custom_icon_btn.dart';
import 'package:marketplace/src/features/widgets/product_card.dart';
import 'package:marketplace/src/features/user_profile/presentation/widgets/user_info_profile_widget.dart';
import 'package:marketplace/src/utilsresources/resources.dart';

const double _radius = 15;
const double _paddingUnit = 6;

final REdgeInsets _paddingMargin = REdgeInsets.all(_paddingUnit * 2.5);
final REdgeInsets _verticalPadding =
    REdgeInsets.symmetric(vertical: _paddingUnit);

class UserProfileBody extends StatelessWidget {
  const UserProfileBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ColoredContainer(
            borderRadiusGeometry: const BorderRadius.only(
                bottomLeft: Radius.circular(_radius),
                bottomRight: Radius.circular(_radius)),
            color: AppColors.white,
            padding: _paddingMargin,
            child: Column(
              children: [
                Row(
                  children: [
                    const Expanded(child: CustomIconBtn()),
                    KButton(
                        onPressed: () {
                          _pushToNotification(context);
                        },
                        icon: Icons.notifications_none)
                  ],
                ),
                20.verticalSpace,
                Row(
                  children: [
                    Expanded(
                      child: ColoredContainer(
                        boxShadow: const [],
                        borderRadiusGeometry: BorderRadius.circular(_radius),
                        padding: _paddingMargin,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  S.of(context).discount,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(color: AppColors.grey),
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_right,
                                  color: AppColors.grey,
                                )
                              ],
                            ),
                            5.verticalSpace,
                            Text(
                              S.of(context).up,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    15.horizontalSpace,
                    ColoredContainer(
                        boxShadow: const [],
                        borderRadiusGeometry: BorderRadius.circular(_radius),
                        padding: _paddingMargin,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  S.of(context).paymentUponReceipt,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(color: AppColors.grey),
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_right,
                                  color: AppColors.grey,
                                )
                              ],
                            ),
                            5.verticalSpace,
                            Text(
                              S.of(context).up,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w500),
                            )
                          ],
                        ))
                  ],
                ),
                15.verticalSpace,
                ColoredContainer(
                  boxShadow: const [],
                  borderRadiusGeometry: BorderRadius.circular(_radius),
                  padding: _paddingMargin,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                S.of(context).balance,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: AppColors.grey),
                              ),
                              const Icon(
                                Icons.keyboard_arrow_right,
                                color: AppColors.grey,
                              )
                            ],
                          ),
                          5.verticalSpace,
                          Text(
                            "0 Р",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      KElevatedBtn(
                          widget: Text(
                            S.of(context).openWallet,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                          onPressed: () {})
                    ],
                  ),
                )
              ],
            ),
          ),
          20.verticalSpace,
          ColoredContainer(
            borderRadiusGeometry: BorderRadius.circular(_radius),
            padding: _paddingMargin,
            color: AppColors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserProfileInfoWidget(
                  title: S.of(context).delivery,
                  padding: _verticalPadding,
                  widget: Text(
                    S.of(context).upComing,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: AppColors.grey, height: 1.2.h),
                  ),
                ),
                10.verticalSpace,
                Image.asset(
                  Images.card,
                  height: 160.h,
                ),
                15.verticalSpace,
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: S.of(context).getProductsBy,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(color: AppColors.grey),
                            children: [
                              TextSpan(
                                  text: S.of(context).byQr,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(color: AppColors.violent)),
                              TextSpan(
                                  text: "\nили коду 98568",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                          color: AppColors.grey,
                                          height: 1.5.h)),
                            ]),
                      ),
                      Image.asset(
                        Images.card,
                        height: 50.h,
                      )
                    ]),
                10.verticalSpace,
                const Divider(),
                UserProfileInfoWidget(
                  padding: _verticalPadding,
                  title: S.of(context).myPurchases,
                  widget: Text(
                    S.of(context).leaveReviewsForProducts,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: AppColors.grey, height: 1.5.h),
                  ),
                ),
                const Divider(),
                UserProfileInfoWidget(
                  padding: _verticalPadding,
                  title: S.of(context).waitingList,
                  widget: Text(
                    "В наличии: 0/0",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: AppColors.grey, height: 1.5.h),
                  ),
                ),
                const Divider(),
                UserProfileInfoWidget(
                  title: S.of(context).delayed,
                  padding: _verticalPadding,
                ),
                const Divider(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UserProfileInfoWidget(
                      padding: _verticalPadding,
                      title: S.of(context).youWatched,
                    ),
                    10.verticalSpace,
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width,
                      height: MediaQuery.sizeOf(context).height * 0.55,
                      child: ListView.builder(
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) => Container(
                              padding: _paddingMargin,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ProductCard(
                                    widget: Text(
                                      S.of(context).trash,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(
                                            color: AppColors.white,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: REdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.fire_truck,
                                          color: AppColors.grey,
                                          size: 20.h,
                                        ),
                                        5.horizontalSpace,
                                        Text(
                                          "1 June",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall!
                                              .copyWith(color: AppColors.grey),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ))),
                    ),
                    const Divider(),
                    UserProfileInfoWidget(
                        padding: _verticalPadding,
                        title: S.of(context).favouriteBrands),
                  ],
                ),
              ],
            ),
          ),
          15.verticalSpace,
          ColoredContainer(
            borderRadiusGeometry: BorderRadius.circular(_radius),
            color: AppColors.white,
            padding: _paddingMargin * 1.7,
            child: UserProfileInfoWidget(
              title: S.of(context).favouriteBrands,
              icon: Icons.message,
              color: AppColors.violent,
              size: 40.h,
              widget: Text(
                S.of(context).contactUsIfYouNeedAdvice,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: AppColors.grey),
              ),
            ),
          ),
          15.verticalSpace,
          ColoredContainer(
            // padding: _paddingMargin,
            color: AppColors.white,
            borderRadiusGeometry: BorderRadius.circular(_radius),
            child: Column(
              children: [
                UserProfileInfoWidget(
                  title: S.of(context).myPaymentMethods,
                  padding: _paddingMargin,
                ),
                const Divider(),
                UserProfileInfoWidget(
                  title: "Финансы",
                  padding: _paddingMargin,
                ),
              ],
            ),
          ),
          15.verticalSpace,
          ColoredContainer(
            color: AppColors.white,
            borderRadiusGeometry: BorderRadius.circular(_radius),
            child: Column(
              children: [
                UserProfileInfoWidget(
                  title: S.of(context).returnOfDefectiveGoods,
                  padding: _paddingMargin,
                ),
                const Divider(),
                UserProfileInfoWidget(
                  title: S.of(context).activeSessions,
                  padding: _paddingMargin,
                ),
                const Divider(),
                UserProfileInfoWidget(
                  title: S.of(context).displayPrices,
                  padding: _paddingMargin,
                  widget: Text(
                    S.of(context).kyrgyzSom,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: AppColors.grey, height: 1.2.h),
                  ),
                ),
              ],
            ),
          ),
          15.verticalSpace,
          ColoredContainer(
            color: AppColors.white,
            borderRadiusGeometry: BorderRadius.circular(_radius),
            child: UserProfileInfoWidget(
              title: S.of(context).returnOfDefectiveGoods,
              padding: _paddingMargin,
            ),
          ),
          15.verticalSpace,
          ColoredContainer(
            color: AppColors.white,
            borderRadiusGeometry: BorderRadius.circular(_radius),
            child: UserProfileInfoWidget(
              title: S.of(context).privacyPolicy,
              padding: _paddingMargin,
            ),
          ),
          35.verticalSpace,
          Text(
            S.of(context).aboutApp,
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: AppColors.violent),
          ),
          10.verticalSpace,
          Text(
            S.of(context).InformationForClients,
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: AppColors.violent),
          ),
          20.verticalSpace,
        ],
      ),
    );
  }

  void _pushToNotification(BuildContext context) {
    context.push("/home/notification");
  }
}
