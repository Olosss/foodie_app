import 'package:flutter/material.dart';
import 'package:foodie_app/core/presentation/widget/button/custom_button.dart';
import 'package:foodie_app/core/styles/styles.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    super.key,
    required this.label,
    required this.onTap,
    this.isLoading = false,
    this.image,
  });

  final String label;
  final VoidCallback onTap;
  final bool isLoading;
  final Widget? image;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return CustomButton(
      image: image,
      label: label,
      gradient: theme.extension<AppGradients>()?.buttonGradient,
      onTap: onTap,
      isLoading: isLoading,
    );
  }
}
