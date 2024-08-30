import 'package:flutter/material.dart';
import 'package:foodie_app/styles/app_border.dart';

import 'custom_button.dart';

class OutlinedCustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final Widget? image;

  const OutlinedCustomButton({
    super.key,
    required this.label,
    required this.onTap,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return CustomButton(
      label: label,
      border: AppBorders.borderAll(theme.colorScheme.primary),
      onTap: onTap,
      image: image,
    );
  }
}
