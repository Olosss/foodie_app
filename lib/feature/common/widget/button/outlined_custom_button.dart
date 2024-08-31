import 'package:flutter/material.dart';
import 'package:foodie_app/styles/app_border.dart';

import 'custom_button.dart';

class OutlinedCustomButton extends StatelessWidget {
  const OutlinedCustomButton({
    super.key,
    required this.label,
    required this.onTap,
    required this.image,
  });

  final String label;
  final VoidCallback onTap;
  final Widget? image;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return CustomButton(
      label: label,
      border: AppBorders.borderAll(
        theme.colorScheme.primary,
      ),
      onTap: onTap,
      image: image,
    );
  }
}
