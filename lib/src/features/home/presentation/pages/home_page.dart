import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/home/presentation/widgets/home_search_bar.dart';
import 'package:marketplace/src/features/home/presentation/widgets/k_button.dart';
import 'package:marketplace/src/features/home/presentation/widgets/product_card.dart';
import 'package:marketplace/src/features/widgets/k_text_button.dart';
import 'package:marketplace/src/utilsresources/resources.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: RefreshIndicator.adaptive(
        displacement: 70,
        onRefresh: () async {
          debugPrint("refresh");
        },
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
                snap: true,
                floating: true,
                centerTitle: false,
                automaticallyImplyLeading: false,
                title: KTextBtn(
                    onPressed: () => _pushToDelivery(context),
                    title: Row(
                      children: [
                        Text(
                          "Бишкек, Микрорайон Восток-5 2/2",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(color: AppColors.black),
                        ),
                        10.horizontalSpace,
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.grey,
                          size: 25.h,
                        )
                      ],
                    )),
                actions: [
                  KButton(
                      onPressed: () {
                        _pushToNotification(context);
                      },
                      icon: Icons.notifications_none)
                ]),
            SliverToBoxAdapter(
              child: CarouselSlider(
                options: CarouselOptions(
                    disableCenter: false,
                    autoPlay: true,
                    height: 180,
                    viewportFraction: 1.255),
                items: List.generate(
                    6,
                    (index) => Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20).r),
                          child: Image.asset(
                            Images.add,
                            width: 350.w,
                            fit: BoxFit.fill,
                          ),
                        )),
              ),
            ),
            SliverPadding(
              padding: REdgeInsets.symmetric(vertical: 30),
              sliver: const SliverAppBar(
                flexibleSpace: HomeSearchBar(),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: REdgeInsets.fromLTRB(10, 0, 10, 10),
                width: double.infinity,
                padding: REdgeInsets.all(16),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 250.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Доставка в пути",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: AppColors.violent),
                          ),
                          5.verticalSpace,
                          Text(
                            "28 Мая. Вам придет уведомление о поступлении.",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration:
                              const BoxDecoration(color: AppColors.pink),
                        ),
                        5.verticalSpace,
                        Text(
                          S.of(context).share,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: REdgeInsets.fromLTRB(16, 20, 16, 16),
              sliver: SliverToBoxAdapter(
                child: Text(
                  S.of(context).specialForYou,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: AppColors.black),
                ),
              ),
            ),
            SliverGrid.builder(
                itemCount: 20,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 1),
                    crossAxisSpacing: 20,
                    crossAxisCount: 2,
                    mainAxisSpacing: 5),
                itemBuilder: (_, index) => const ProductCard()),
          ],
        ),
      ),
    ));
  }

  void _pushToDelivery(BuildContext context) {
    context.push("/home/delivery");
  }

  void _pushToNotification(BuildContext context) {
    context.push("/home/notification");
  }
}
