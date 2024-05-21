import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/features/home/presentation/widgets/delivery_button.dart';
import 'package:marketplace/src/features/home/presentation/widgets/k_radio_list_tile.dart';

class TabBarFirstItem extends StatefulWidget {
  const TabBarFirstItem({
    super.key,
  });

  @override
  State<TabBarFirstItem> createState() => _TabBarFirstItemState();
}

List<String> options = ["Бишкек, Аламедин-1", "Бишкек, Аламедин-2"];

class _TabBarFirstItemState extends State<TabBarFirstItem> {
  String currentOption = options[0];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          KRadioListTile(
            currentOption: currentOption,
            value: options[0],
            groupValue: currentOption,
            text: "Бишкек, Аламедин-1",
            onChanged: (p0) {
              setState(() {
                currentOption = p0!;
              });
            },
          ),
          KRadioListTile(
            currentOption: currentOption,
            value: options[1],
            groupValue: currentOption,
            text: "Бишкек, Аламедин-1",
            onChanged: (p0) {
              setState(() {
                currentOption = p0!;
              });
            },
          ),
          10.verticalSpace,
          const DeliveryButton()
        ],
      ),
    );
  }
}
