import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/utils/extensions/extensions.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/widgets/buttons/c_icon_button.dart';
import 'package:marketplace/src/features/home/presentation/widgets/fields/search_form_field.dart';
import 'package:marketplace/src/features/widgets/background/colored_safe_area.dart';
import 'package:marketplace/src/features/widgets/product_card.dart';
import 'package:marketplace/src/utils/resources/resources.dart';

const double _unit = 16;
final REdgeInsets _padding = REdgeInsets.fromLTRB(_unit, 24, _unit, 24);

class CategoryResultPage extends StatefulWidget {
  const CategoryResultPage({super.key});

  @override
  State<CategoryResultPage> createState() => _CategoryResultPageState();
}

class _CategoryResultPageState extends State<CategoryResultPage> {
  final _query = TextEditingController();
  final _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return ColoredSafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: _padding,
              sliver: SliverAppBar(
                automaticallyImplyLeading: false,
                flexibleSpace: Row(
                  children: [
                    CButton(
                        onPressed: () => _pop(),
                        icon: SvgPicture.asset(
                          Images.arrowLeft,
                          color: AppColors.grey,
                        )),
                    10.horizontalSpace,
                    Expanded(
                      child: SearchFormField(
                          controller: _query,
                          focusNode: _focusNode,
                          textInputAction: TextInputAction.done),
                    )
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: REdgeInsets.symmetric(horizontal: _unit),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Для лица",
                      style: context.textTheme.titleMedium!.copyWith(
                          color: AppColors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    4.verticalSpace,
                    Text(
                      "35 товаров",
                      style: context.textTheme.bodyMedium!.copyWith(
                        color: AppColors.grey,
                      ),
                    ),
                    20.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CButton(
                                onPressed: () {},
                                icon: Row(
                                  children: [SvgPicture.asset(Images.arrow3)],
                                )),
                            8.horizontalSpace,
                            Text(
                              S.of(context).byPopularity,
                              style: context.textTheme.labelLarge!.copyWith(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            CButton(
                                onPressed: () {},
                                icon: Row(
                                  children: [
                                    SvgPicture.asset(Images.filterSquare)
                                  ],
                                )),
                            8.horizontalSpace,
                            Text(
                              S.of(context).filters,
                              style: context.textTheme.labelLarge!.copyWith(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
                padding: REdgeInsets.fromLTRB(0, 24, 16, 24),
                sliver: SliverGrid.builder(
                    itemCount: 10,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        childAspectRatio:
                            context.width / (context.height / 1.45)),
                    itemBuilder: (_, index) => const ProductCard())),
          ],
        ),
      ),
    );
  }

  void _pop() {
    context.pop();
  }
}
