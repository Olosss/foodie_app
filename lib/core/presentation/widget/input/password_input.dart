import 'package:flutter/material.dart';
import 'package:foodie_app/core/presentation/widget/input/custom_input.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    super.key,
    this.lengthPasswordRequirementConditions = false,
    this.controller,
  });
  final bool lengthPasswordRequirementConditions;
  final TextEditingController? controller;

  String? _validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'The password cannot be empty.';
    }
    if (lengthPasswordRequirementConditions && password.length < 5) {
      return 'The password must contain at least 6 characters.';
    }
    if (lengthPasswordRequirementConditions && password.length > 16) {
      return 'The password cannot exceed 16 characters.';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return CustomInput(
      label: 'Password',
      iconData: Icons.lock_clock_outlined,
      hintText: 'Enter your password',
      controller: controller,
      validator: _validatePassword,
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      helperText: lengthPasswordRequirementConditions
          ? 'Password must contain at least 8 characters.'
          : null,
      helperIcon: Icons.info,
    );
  }
}
