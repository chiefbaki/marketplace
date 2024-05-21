import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/src/features/home/presentation/widgets/product_card.dart';

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
