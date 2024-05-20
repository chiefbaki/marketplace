import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/features/home/presentation/widgets/search_result.dart';

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.punch_clock_rounded,
          size: 25.h,
          color: Colors.grey,
        ),
        const Expanded(
          child: SearchResult(),
        )
      ],
    );
  }
}
