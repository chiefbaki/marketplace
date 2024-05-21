import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/config/routes/app_router_names.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/home/presentation/widgets/k_button.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0).w,
      padding: REdgeInsets.symmetric(horizontal: 20, vertical: 15).h,
      decoration: BoxDecoration(
          color: AppColors.pink, borderRadius: BorderRadius.circular(40).r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => _pushToSearch(context),
            child: Row(
              children: [
                Icon(
                  Icons.search_rounded,
                  size: 30.h,
                  color: AppColors.violent,
                ),
                10.horizontalSpace,
                Text(
                  S.of(context).search,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: AppColors.violent, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Row(
            children: [
              KButton(
                icon: Icons.mic_none,
                onPressed: () {},
              ),
              KButton(
                icon: Icons.camera_alt_outlined,
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  void _pushToSearch(BuildContext context) {
    context.push(RouterNames.home.name);
  }
}
