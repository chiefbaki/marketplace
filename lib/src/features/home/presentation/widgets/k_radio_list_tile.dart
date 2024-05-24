import 'package:flutter/material.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/home/presentation/widgets/buttons/k_popup_menu_btn.dart';

class KRadioListTile extends StatelessWidget {
  final String groupValue;
  final String value;
  final String text;
  final void Function(String?) onChanged;
  const KRadioListTile(
      {super.key,
      required this.currentOption,
      required this.groupValue,
      required this.value,
      required this.text,
      required this.onChanged});

  final String currentOption;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          fillColor: const WidgetStatePropertyAll(AppColors.violent),
          selectedTileColor: AppColors.violent,
          value: value,
          groupValue: currentOption,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: AppColors.black),
              ),
              const KPopupMenuBtn()
            ],
          ),
          onChanged: onChanged,
        ),
      ],
    );
  }
}
