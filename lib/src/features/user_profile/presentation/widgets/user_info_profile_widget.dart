import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/utils/extensions/extensions.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/home/presentation/widgets/buttons/k_elevated_btn.dart';
import 'package:marketplace/src/features/widgets/background/colored_container.dart';

const double _paddingUnit = 5;
final REdgeInsets _paddingMargin = REdgeInsets.all(_paddingUnit);
const BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.only(
  topLeft: Radius.circular(_paddingUnit * 5),
  topRight: Radius.circular(_paddingUnit * 5),
);

class UserProfileInfoWidget extends StatefulWidget {
  final String title;
  final IconData icon;
  final EdgeInsets? padding;
  final Widget? widget;
  final double? size;
  final Color? color;
  const UserProfileInfoWidget(
      {super.key,
      required this.title,
      this.icon = Icons.keyboard_arrow_right,
      this.padding,
      this.size,
      this.color,
      this.widget});

  @override
  State<UserProfileInfoWidget> createState() => _UserProfileInfoWidgetState();
}

class _UserProfileInfoWidgetState extends State<UserProfileInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
              useRootNavigator: true,
              shape: const RoundedRectangleBorder(
                  borderRadius: _borderRadiusGeometry),
              context: context,
              builder: (build) => Container(
                    padding: _paddingMargin * 4,
                    height: context.height * 0.35,
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "30 %",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w700),
                        ),
                        Text(
                          S.of(context).youPersonalDiscountonWB,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: AppColors.black,
                                  ),
                        ),
                        15.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ColoredContainer(
                                boxShadow: const [],
                                padding: REdgeInsets.fromLTRB(
                                    _paddingUnit * 2,
                                    _paddingUnit * 3,
                                    _paddingUnit * 6,
                                    _paddingUnit * 3),
                                borderRadiusGeometry: BorderRadius.circular(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      S.of(context).ransomAmount,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(color: AppColors.grey),
                                    ),
                                    6.verticalSpace,
                                    Text(
                                      "4 400 Р",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              color: AppColors.black,
                                              fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                )),
                            ColoredContainer(
                                boxShadow: const [],
                                padding: REdgeInsets.fromLTRB(
                                    _paddingUnit * 2,
                                    _paddingUnit * 3,
                                    _paddingUnit * 6,
                                    _paddingUnit * 3),
                                borderRadiusGeometry: BorderRadius.circular(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      S.of(context).redemptionPercentage,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(color: AppColors.grey),
                                    ),
                                    6.verticalSpace,
                                    Text(
                                      "100%",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              color: AppColors.green,
                                              fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                        const Spacer(),
                        SizedBox(
                          width: double.infinity,
                          child: KElevatedBtn(
                              widget: Text(
                                "Понятно",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              onPressed: () {}),
                        )
                      ],
                    ),
                  ));
        },
        hoverColor:
            AppColors.textFieldColor.withOpacity(0.2), // Цвет при наведении
        splashColor:
            AppColors.textFieldColor.withOpacity(0.4), // Цвет при нажатии
        highlightColor: AppColors.textFieldColor.withOpacity(0.3),
        child: Container(
          padding: widget.padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: AppColors.black,
                        ),
                  ),
                  widget.widget != null ? widget.widget! : const SizedBox(),
                ],
              ),
              Icon(
                widget.icon,
                size: widget.size,
                color: widget.color,
              )
            ],
          ),
        ),
      ),
    );
  }
}
