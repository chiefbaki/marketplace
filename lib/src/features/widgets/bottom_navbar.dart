import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class KBottomNavBar extends StatefulWidget {
  final Widget child;
  const KBottomNavBar({super.key, required this.child});

  @override
  State<KBottomNavBar> createState() => _KBottomNavBarState();
}

class _KBottomNavBarState extends State<KBottomNavBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            _chandeTab(value, context);
          },
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.home,
                  size: 25.h,
                )),
            BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.search,
                  size: 25.h,
                )),
            BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.shopping_basket,
                  size: 25.h,
                )),
            BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.info,
                  size: 25.h,
                )),
          ]),
    );
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
        context.go("/user-profile");
        break;
    }
    setState(() {
      _currentIndex = index;
    });
  }
}
