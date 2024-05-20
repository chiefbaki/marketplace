import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/home/presentation/widgets/home_search_bar.dart';
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
        const SliverAppBar(
          flexibleSpace: HomeSearchBar(),
        ),
        SliverAppBar(
          flexibleSpace: Container(
            child: Column(
              children: [
                Image.asset(
                  Images.card,
                  width: 120.w,
                  height: 170.h,
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
