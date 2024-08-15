import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      "Forgot Password?",
      style: theme.textTheme.titleSmall,
    );
  }

  void _navigateToForgotPasswordPage(BuildContext context) {
    ///TODO
  }
}
