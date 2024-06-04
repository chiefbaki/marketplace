import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/src/core/utils/extensions/extensions.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/user_profile/presentation/widgets/c_ist_tile.dart';
import 'package:marketplace/src/features/widgets/background/colored_safe_area.dart';
import 'package:marketplace/src/utils/resources/resources.dart';

const double _paddingUnit = 16;

final REdgeInsets _paddingMargin =
    REdgeInsets.fromLTRB(_paddingUnit, 24, _paddingUnit, _paddingUnit);

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = List.generate(4, (i) => const CListTile());
    return ColoredSafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              centerTitle: false,
              title: Row(
                children: [
                  CircleAvatar(
                    radius: 20.r,
                    child: Image.asset(
                      Images.ava,
                    ),
                  ),
                  12.horizontalSpace,
                  Text(
                    "Умар",
                    style: context.textTheme.titleLarge!.copyWith(
                        color: AppColors.black,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            SliverPadding(
              padding: _paddingMargin,
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: widgets.map((e) => e).toList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _pushToNotification(BuildContext context) {
    context.push("/home/notification");
  }
}
