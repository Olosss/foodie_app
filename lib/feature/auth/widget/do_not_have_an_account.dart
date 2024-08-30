import 'package:flutter/material.dart';

class DoNotHaveAnAccount extends StatelessWidget {
  const DoNotHaveAnAccount({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Don't have an account?",
            style: theme.textTheme.headlineSmall,
          ),
          Text(
            ' Sign Up',
            style: theme.textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
