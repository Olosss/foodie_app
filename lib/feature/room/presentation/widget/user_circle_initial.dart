import 'package:flutter/material.dart';
import 'package:foodie_app/core/styles/styles.dart';

class UserCircleInitials extends StatelessWidget {
  const UserCircleInitials({
    super.key,
    required this.userName,
  });

  final String userName;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        shape: BoxShape.circle,
        border: AppBorders.borderAll(
          theme.colorScheme.secondaryFixed,
        ),
      ),
      child: Padding(
        padding: Paddings.paddingExtraSmall(),
        child: Text(
          userName.substring(0, 2).toUpperCase(),
          style: theme.textTheme.bodySmall,
        ),
      ),
    );
  }
}
