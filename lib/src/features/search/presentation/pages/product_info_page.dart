import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/utils/extensions/extensions.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/basket/presentation/widgets/basket_btn.dart';
import 'package:marketplace/src/features/search/presentation/widgets/circle_arrow_btn.dart';
import 'package:marketplace/src/features/search/presentation/widgets/filter_container.dart';
import 'package:marketplace/src/features/search/presentation/widgets/prod_list_scroll.dart';
import 'package:marketplace/src/features/widgets/background/colored_safe_area.dart';
import 'package:marketplace/src/features/widgets/buttons/c_elevated_button.dart';
import 'package:marketplace/src/features/widgets/buttons/c_icon_button.dart';
import 'package:marketplace/src/features/widgets/dicsount_container.dart';
import 'package:marketplace/src/utils/resources/resources.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class ProductInfoPage extends StatefulWidget {
  const ProductInfoPage({super.key});

  @override
  State<ProductInfoPage> createState() => _ProductInfoPageState();
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  final itemScrollController = ItemScrollController();
  final itemPositionsListener = ItemPositionsListener.create();

  List<int> shownItemsIndexOnScreen = [];
  int startIndex = 0;
  int endIndex = 0;

  void getShownItemsIndex() {
    shownItemsIndexOnScreen = itemPositionsListener.itemPositions.value
        .where((element) {
          final isPreviousVisible = element.itemLeadingEdge >= 0;
          return isPreviousVisible;
        })
        .map((item) => item.index)
        .toList();

    setState(() {
      startIndex = shownItemsIndexOnScreen.isEmpty
          ? 0
          : shownItemsIndexOnScreen.reduce(min);

      endIndex = shownItemsIndexOnScreen.isEmpty
          ? 0
          : shownItemsIndexOnScreen.reduce(max);
    });
  }

  void scrollToNext() async {
    getShownItemsIndex();
    if (endIndex < 10 - 1) {
      // Assuming itemCount is 10
      await itemScrollController.scrollTo(
          index: endIndex + 1,
          alignment: 0.8,
          duration: const Duration(milliseconds: 200));
    }
  }

  void scrollToPrevious() async {
    getShownItemsIndex();
    if (startIndex > 0) {
      await itemScrollController.scrollTo(
          index: startIndex - 1,
          alignment: 0,
          duration: const Duration(milliseconds: 200));
    }
  }

  @override
  void initState() {
    super.initState();
    itemPositionsListener.itemPositions.addListener(getShownItemsIndex);
  }

  final List<String> _volume = ["20", "30"];
  final List<String> _colors = [
    "Синий",
    "Зеленый",
    "Красный",
    "Фиолетовый",
    "Оранжевый"
  ];
  bool _isVisible = false;
  int _selectedIndexColor = 0;
  int _selectedIndexVolume = 0;

  @override
  Widget build(BuildContext context) {
    return ColoredSafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: REdgeInsets.symmetric(horizontal: 16, vertical: 24),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            Images.arrowLeft,
                            height: 24.h,
                          ),
                        ),
                        CButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            Images.vector,
                            height: 28.h,
                          ),
                        ),
                      ],
                    ),
                    20.verticalSpace,
                    Image.asset(Images.bigProd),
                    17.verticalSpace,
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleArrowBtn(
                          onPressed: scrollToPrevious,
                          icon: Images.arrowLeft,
                        ),
                        SizedBox(
                          width: 250.w,
                          height: 75.h,
                          child: ScrollablePositionedList.builder(
                            itemScrollController: itemScrollController,
                            itemPositionsListener: itemPositionsListener,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount:
                                10, // Убедитесь, что itemCount установлен правильно
                            itemBuilder: (_, index) => Padding(
                              padding: REdgeInsets.only(left: 10),
                              child: const ProdListScroll(),
                            ),
                          ),
                        ),
                        CircleArrowBtn(
                          onPressed: scrollToNext,
                          icon: Images.arrowRight,
                        ),
                      ],
                    ),
                    35.verticalSpace,
                    Text(
                      "Эмульсия G.LOVE для умывания с азиатской центелой",
                      style: context.textTheme.titleLarge!.copyWith(
                          color: AppColors.black,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    24.verticalSpace,
                    Text(
                      "Объем, мл",
                      style: context.textTheme.titleLarge!.copyWith(
                          color: AppColors.black,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    12.verticalSpace,
                    SizedBox(
                        height: 45.h,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: false,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: _volume.length,
                            itemBuilder: (_, index) {
                              return InkWell(
                                onTap: () {
                                  _selectedIndexVolume = index;
                                },
                                child: FilterContainer(
                                  text: _volume[index],
                                  isSelected: _selectedIndexVolume == index,
                                ),
                              );
                            })),
                    16.verticalSpace,
                    Text(
                      S.of(context).color,
                      style: context.textTheme.titleLarge!.copyWith(
                          color: AppColors.black,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    12.5.verticalSpace,
                    SizedBox(
                        height: 45.h,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: false,
                            physics: const AlwaysScrollableScrollPhysics(),
                            itemCount: _colors.length,
                            itemBuilder: (_, index) {
                              return InkWell(
                                onTap: () {
                                  _selectedIndexColor = index;
                                },
                                child: FilterContainer(
                                  text: _colors[index],
                                  isSelected: _selectedIndexColor == index,
                                ),
                              );
                            })),
                    16.verticalSpace,
                    Text(
                      S.of(context).price,
                      style: context.textTheme.titleLarge!.copyWith(
                          color: AppColors.black,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    13.verticalSpace,
                    Row(
                      children: [
                        Text(
                          "2600 сом",
                          style: context.textTheme.bodyMedium!.copyWith(
                              color: AppColors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        12.horizontalSpace,
                        Text(
                          "3000 сом",
                          style: context.textTheme.bodySmall!.copyWith(
                              color: AppColors.grey,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.lineThrough),
                        ),
                        46.horizontalSpace,
                        const DiscountContainer()
                      ],
                    ),
                    24.verticalSpace,
                    CElevatedBtn(
                      onPressed: () {},
                      text: S.of(context).addToBasket,
                    ),
                    30.verticalSpace,
                    Column(
                      children: [
                        Row(
                          children: [
                            AddSubBtn(
                              onPressed: () {
                                setState(() {
                                  _isVisible = !_isVisible;
                                });
                              },
                            ),
                            22.horizontalSpace,
                            Text(
                              S.of(context).description,
                              style: context.textTheme.titleMedium!.copyWith(
                                color: AppColors.black,
                              ),
                            ),
                          ],
                        ),
                        _isVisible
                            ? Padding(
                                padding: REdgeInsets.only(top: 24),
                                child: Text(
                                  "Вода, миристиновая кислота, глицерин, гидроксид калия, лауриновая кислота, пальмитиновая кислота, стеариновая кислота, глицерил глюкозид, лаурил бетаин, полиглицерил-2 стеарат, пчелиный воск",
                                  style:
                                      context.textTheme.titleMedium!.copyWith(
                                    color: AppColors.black,
                                  ),
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
                    30.verticalSpace,
                    Column(
                      children: [
                        Row(
                          children: [
                            AddSubBtn(
                              onPressed: () {
                                setState(() {
                                  _isVisible = !_isVisible;
                                });
                              },
                            ),
                            22.horizontalSpace,
                            Text(
                              S.of(context).property,
                              style: context.textTheme.titleMedium!.copyWith(
                                color: AppColors.black,
                              ),
                            ),
                          ],
                        ),
                        _isVisible
                            ? Padding(
                                padding: REdgeInsets.only(top: 24),
                                child: Text(
                                  "Вода, миристиновая кислота, глицерин, гидроксид калия, лауриновая кислота, пальмитиновая кислота, стеариновая кислота, глицерил глюкозид, лаурил бетаин, полиглицерил-2 стеарат, пчелиный воск",
                                  style:
                                      context.textTheme.titleMedium!.copyWith(
                                    color: AppColors.black,
                                  ),
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
                    30.verticalSpace,
                    Column(
                      children: [
                        Row(
                          children: [
                            AddSubBtn(
                              onPressed: () {
                                setState(() {
                                  _isVisible = !_isVisible;
                                });
                              },
                            ),
                            22.horizontalSpace,
                            Text(
                              S.of(context).characteristics,
                              style: context.textTheme.titleMedium!.copyWith(
                                color: AppColors.black,
                              ),
                            ),
                          ],
                        ),
                        _isVisible
                            ? Padding(
                                padding: REdgeInsets.only(top: 24),
                                child: Text(
                                  "Объем 200",
                                  style:
                                      context.textTheme.titleMedium!.copyWith(
                                    color: AppColors.black,
                                  ),
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
