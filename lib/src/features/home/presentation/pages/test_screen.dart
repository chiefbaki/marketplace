import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/home/presentation/widgets/k_button.dart';
import 'package:marketplace/src/features/home/presentation/widgets/k_elevated_btn.dart';
import 'package:marketplace/src/features/home/presentation/widgets/product_card.dart';
import 'package:marketplace/src/utilsresources/resources.dart';

@RoutePage()
class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ProductCard()],
          ),
        ),
      ),
    );
  }
}

