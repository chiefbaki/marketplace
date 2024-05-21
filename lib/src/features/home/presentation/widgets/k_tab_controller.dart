import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/home/presentation/widgets/k_elevated_btn.dart';
import 'package:marketplace/src/features/home/presentation/widgets/tab_bar_first_item.dart';
import 'package:marketplace/src/features/home/presentation/widgets/tab_item.dart';

class KTabController extends StatefulWidget {
  const KTabController({
    super.key,
  });

  @override
  State<KTabController> createState() => _KTabControllerState();
}

class _KTabControllerState extends State<KTabController> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Column(
        children: [
          10.verticalSpace,
          TabBar(
            onTap: (value) {
              setState(() {
                isSelected = !isSelected;
              });
            },
            labelStyle: Theme.of(context).textTheme.titleSmall!,
            labelColor: AppColors.violent,
            indicatorColor: AppColors.violent,
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: Theme.of(context).textTheme.titleSmall!,
            dividerHeight: 10,
            dividerColor: AppColors.black,
            splashBorderRadius: BorderRadius.circular(2),
            overlayColor:
                WidgetStatePropertyAll(AppColors.violent.withOpacity(0.2)),
            tabs: [
              Tab(
                child: TabItem(
                  isSelected: !isSelected,
                  icon: Icons.delivery_dining,
                  text: S.of(context).pickUpPoint,
                ),
              ),
              Tab(
                child: TabItem(
                  isSelected: isSelected,
                  icon: Icons.man,
                  text: S.of(context).deliver,
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(children: [
              const TabBarFirstItem(),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Список пуст",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: AppColors.black),
                    ),
                    const Spacer(),
                    KElevatedBtn(
                        widget: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              size: 20.h,
                            ),
                            4.horizontalSpace,
                            Text(
                              "Добавить адрес",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                            )
                          ],
                        ),
                        onPressed: () {}),
                    20.verticalSpace,
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
