import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/home/presentation/widgets/home_search_bar.dart';
import 'package:marketplace/src/features/home/presentation/widgets/product_card.dart';
import 'package:marketplace/src/utilsresources/resources.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
            snap: true,
            floating: true,
            centerTitle: false,
            automaticallyImplyLeading: false,
            title: Text(
              "Бишкек, Микрорайон Восток-5 2/2",
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: AppColors.black),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_none,
                    color: AppColors.violent,
                    size: 25.h,
                  ))
            ]),
        SliverToBoxAdapter(
          child: Expanded(
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
          )),
        ),
        const SliverAppBar(
          flexibleSpace: HomeSearchBar(),
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
    ));
  }
}
