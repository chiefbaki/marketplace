import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/core/utils/resources/resources.dart';

class KBottomNavBar extends StatefulWidget {
  final Widget child;
  const KBottomNavBar({super.key, required this.child});

  @override
  State<KBottomNavBar> createState() => _KBottomNavBarState();
}

class _KBottomNavBarState extends State<KBottomNavBar> {
  int _currentIndex = 0;
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: widget.child,
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: BottomNavigationBar(
              backgroundColor: AppColors.white,
              selectedItemColor: AppColors.primaryLightColor,
              onTap: (value) {
                _value = value;
                _chandeTab(_value, context);
              },
              currentIndex: _currentIndex,
              items: [
                BottomNavigationBarItem(
                    label: S.of(context).main,
                    icon: SvgPicture.asset(
                      Images.home2,
                      height: 24.h,
                      color: _currentIndex == _value
                          ? AppColors.primaryLightColor
                          : AppColors.grey,
                    )),
                BottomNavigationBarItem(
                    label: S.of(context).search,
                    icon: SvgPicture.asset(
                      Images.searchNormal,
                      height: 24.h,
                    )),
                BottomNavigationBarItem(
                    label: S.of(context).basket,
                    icon: SvgPicture.asset(
                      Images.shoppingCart,
                      height: 24.h,
                    )),
                BottomNavigationBarItem(
                    label: S.of(context).profile,
                    icon: SvgPicture.asset(
                      Images.profile,
                      height: 24.h,
                    )),
              ]),
        ));
  }

  void _chandeTab(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.go("/home");
        break;
      case 1:
        context.go("/search");
        break;
      case 2:
        context.go("/basket");
        break;
      case 3:
        context.go("/user");
        break;
    }
    setState(() {
      _currentIndex = index;
    });
  }
}
