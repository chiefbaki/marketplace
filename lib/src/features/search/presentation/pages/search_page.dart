import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/features/search/presentation/widgets/static_search_bar.dart';
import 'package:marketplace/src/features/widgets/background/colored_safe_area.dart';
import 'package:marketplace/src/utilsresources/resources.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredSafeArea(
      child: Scaffold(
          body: Padding(
        padding: REdgeInsets.all(16),
        child: Column(
          children: [
            const StaticSearchBar(),
            20.verticalSpace,
            Expanded(
                child: GridView.builder(
              itemCount: 20,
              itemBuilder: (_, index) => Image.asset(
                Images.card,
                height: 20,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  childAspectRatio: MediaQuery.sizeOf(context).width /
                      (MediaQuery.sizeOf(context).height / 1.7)),
            ))
          ],
        ),
      )),
    );
  }
}
