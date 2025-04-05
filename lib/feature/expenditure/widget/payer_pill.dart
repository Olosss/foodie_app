import 'package:flutter/material.dart';
import 'package:foodie_app/styles/styles.dart';

class PayerPill extends StatelessWidget {
  const PayerPill({
    super.key,
    required this.userName,
    this.isSelected = false,
    required this.onTap,
  });

  final String userName;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isSelected ? null : theme.colorScheme.secondaryFixedDim,
          gradient: isSelected ? theme.extension<AppGradients>()?.buttonGradient : null,
          borderRadius: AppBorderRadius.borderRadiusSmall,
        ),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: theme.scaffoldBackgroundColor,
              borderRadius: AppBorderRadius.borderMediumSmall,
            ),
            child: Padding(
              padding: Paddings.paddingVerticalNanoHorizontalSmall(),
              child: Text(userName),
            ),
          ),
        ),
      ),
    );
  }
}
