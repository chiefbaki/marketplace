import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/utils/extensions/extensions.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/home/presentation/widgets/banner.dart';
import 'package:marketplace/src/features/home/presentation/widgets/c_carousel.dart';
import 'package:marketplace/src/features/home/presentation/widgets/fields/c_static_search_bar.dart';
import 'package:marketplace/src/features/widgets/product_card.dart';
import 'package:marketplace/src/features/widgets/background/colored_safe_area.dart';
import 'package:marketplace/src/utils/resources/resources.dart';

const double _unit = 16;
const double _horizontalUnit = 24;
final REdgeInsets _rEdgeInsetsHorizontal =
    REdgeInsets.fromLTRB(_unit, _horizontalUnit, _unit, _horizontalUnit);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredSafeArea(
      child: Scaffold(
          body: RefreshIndicator.adaptive(
        displacement: 70,
        onRefresh: () async {
          debugPrint("refresh");
        },
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: _rEdgeInsetsHorizontal,
              sliver: SliverAppBar(
                  snap: true,
                  floating: true,
                  centerTitle: false,
                  automaticallyImplyLeading: false,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Привет, Бермет",
                            style: context.textTheme.titleSmall!
                                .copyWith(color: AppColors.grey),
                          ),
                          4.verticalSpace,
                          Text(
                            S.of(context).welcome,
                            style: context.textTheme.titleMedium!.copyWith(
                                color: AppColors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      CircleAvatar(
                        radius: 20.r,
                        child: Image.asset(
                          Images.ava,
                        ),
                      )
                    ],
                  )),
            ),
            SliverPadding(
              padding: REdgeInsets.symmetric(horizontal: _horizontalUnit),
              sliver: const SliverAppBar(
                flexibleSpace: CStaticSearchBar(),
              ),
            ),
            SliverPadding(
              padding: _rEdgeInsetsHorizontal,
              sliver: const SliverToBoxAdapter(
                child: HomePageBanner(),
              ),
            ),
            SliverPadding(
              padding: _rEdgeInsetsHorizontal,
              sliver: const SliverToBoxAdapter(
                child: CCarousel(),
              ),
            ),
            SliverPadding(
              padding: _rEdgeInsetsHorizontal,
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
            SliverToBoxAdapter(
              child: SizedBox(
                width: context.width,
                height: context.height * 0.35,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) => const ProductCard()),
              ),
            ),
            SliverPadding(
              padding: _rEdgeInsetsHorizontal,
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
            SliverToBoxAdapter(
              child: SizedBox(
                width: context.width,
                height: context.height * 0.35,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) => const ProductCard()),
              ),
            )
          ],
        ),
      )),
    );
  }

  void _pushToDelivery(BuildContext context) {
    context.push("/home/delivery");
  }

  void _pushToNotification(BuildContext context) {
    context.push("/home/notification");
  }
}
