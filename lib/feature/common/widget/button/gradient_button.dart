import 'package:flutter/material.dart';

import 'custom_button.dart';

class GradientButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final bool isLoading;

  const GradientButton({
    super.key,
    required this.label,
    required this.onTap,
    this.isLoading = false,
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
      isLoading: isLoading,
    );
  }
}
