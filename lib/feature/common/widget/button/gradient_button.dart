import 'package:flutter/material.dart';

import 'custom_button.dart';

class GradientButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const GradientButton({
    super.key,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return CustomButton(
      label: label,
      gradient: LinearGradient(colors: [
        theme.colorScheme.surface,
        theme.colorScheme.onSurface,
      ]),
      onTap: onTap,
    );
  }
}
