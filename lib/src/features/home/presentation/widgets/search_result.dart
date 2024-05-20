import 'package:flutter/material.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/home/presentation/widgets/k_button.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
        readOnly: true,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: AppColors.black),
        decoration: InputDecoration(
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)),
            suffixIcon: KButton(
              onPressed: () {},
              icon: Icons.close,
              color: Colors.grey,
            )));
  }
}
