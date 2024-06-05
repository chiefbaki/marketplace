import 'package:flutter/material.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class CRangeSlider extends StatefulWidget {
  const CRangeSlider({
    super.key,
  });

  @override
  State<CRangeSlider> createState() => _CRangeSliderState();
}

class _CRangeSliderState extends State<CRangeSlider> {
  double start = 30.0;
  double end = 50.0;
  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      values: RangeValues(start, end),
      labels: RangeLabels(start.toString(), end.toString()),
      activeColor: AppColors.pinkSalt,
      inactiveColor: AppColors.lightGrey,
      onChanged: (value) {
        setState(() {
          start = value.start;
          end = value.end;
        });
      },
      min: 10.0,
      max: 80.0,
    );
  }
}
