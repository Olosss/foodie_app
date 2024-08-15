import 'package:flutter/material.dart';

class DoNotHaveAnAccount extends StatelessWidget {
  final VoidCallback onTap;

  const DoNotHaveAnAccount({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don't have an account?",
            style: theme.textTheme.headlineSmall,
          ),
          Text(
            " Sign Up",
            style: theme.textTheme.titleSmall,
          )
        ],
      ),
    );
  }
}
