import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/utils/extensions/extensions.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/widgets/buttons/c_icon_button.dart';
import 'package:marketplace/src/features/home/presentation/widgets/c_carousel.dart';
import 'package:marketplace/src/features/home/presentation/widgets/fields/c_static_search_bar.dart';
import 'package:marketplace/src/features/widgets/background/colored_safe_area.dart';
import 'package:marketplace/src/utils/resources/resources.dart';

const double _unit = 16;
final REdgeInsets _padding = REdgeInsets.fromLTRB(_unit, 24, _unit, 24);

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredSafeArea(
        child: Scaffold(
            body: CustomScrollView(
      slivers: [
        SliverPadding(
          padding: _padding,
          sliver: SliverAppBar(
            centerTitle: false,
            title: Text(
              "Bishkek",
              style: context.textTheme.titleMedium!.copyWith(
                  color: AppColors.black, fontWeight: FontWeight.w600),
            ),
            actions: [
              CButton(
                  onPressed: () {}, icon: SvgPicture.asset(Images.arrowRight))
            ],
          ),
        ),
        SliverPadding(
          padding: REdgeInsets.symmetric(horizontal: _unit),
          sliver: const SliverToBoxAdapter(
            child: CStaticSearchBar(),
          ),
        ),
        SliverPadding(
          padding: _padding,
          sliver: const SliverToBoxAdapter(
            child: CCarousel(),
          ),
        ),
        SliverPadding(
          padding: _padding,
          sliver: SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  S.of(context).goodsOfWeek,
                  style: context.textTheme.titleMedium!.copyWith(
                      color: AppColors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                SvgPicture.asset(Images.arrowRight)
              ],
            ),
          ),
        ),
        SliverGrid.builder(
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: context.width / (context.height * 0.38),
                mainAxisSpacing: 12),
            itemBuilder: (_, index) => Image.asset(Images.one))
      ],
    )));
  }
}
