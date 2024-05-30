import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/utils/resources/resources.dart';

class CCarousel extends StatelessWidget {
  const CCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          disableCenter: false,
          autoPlay: true,
          height: 180,
          viewportFraction: 1.255),
      items: List.generate(
          6,
          (index) => Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20).r),
                child: Image.asset(
                  Images.carouselPic,
                  width: 350.w,
                  fit: BoxFit.fill,
                ),
              )),
    );
  }
}
