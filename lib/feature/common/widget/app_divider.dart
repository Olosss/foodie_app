import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  final Color? color;
  const AppDivider({
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Divider(
      color: color ?? theme.dividerColor,
      height: 1,
    );
  }
}
