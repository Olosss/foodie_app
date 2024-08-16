import 'package:flutter/material.dart';
import 'package:foodie_app/feature/common/widget/app_divider.dart';
import 'package:foodie_app/styles/styles.dart';

class TextDividerRow extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const TextDividerRow({
    super.key,
    required this.text,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        const Expanded(
          child: AppDivider(),
        ),
        Spacers.horizontalLarge(),
        Text(
          text,
          style: style ?? theme.textTheme.headlineMedium,
        ),
        Spacers.horizontalLarge(),
        const Expanded(
          child: AppDivider(),
        ),
      ],
    );
  }
}
