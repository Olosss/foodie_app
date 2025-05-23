import 'package:flutter/material.dart';
import 'package:foodie_app/core/presentation/widget/app_divider.dart';
import 'package:foodie_app/core/styles/styles.dart';

class TextDividerRow extends StatelessWidget {
  const TextDividerRow({
    super.key,
    required this.text,
    this.style,
  });
  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Row(
      children: <Widget>[
        const Expanded(
          child: AppDivider(),
        ),
        Spacers.horizontalLarge(),
        Text(
          text,
          style: style ?? theme.textTheme.headlineLarge,
        ),
        Spacers.horizontalLarge(),
        const Expanded(
          child: AppDivider(),
        ),
      ],
    );
  }
}
