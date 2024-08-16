import 'package:flutter/material.dart';
import 'package:foodie_app/feature/common/widget/input/custom_input.dart';

class PasswordInput extends StatelessWidget {
  final bool lengthPasswordRequirementConditions;
  final TextEditingController? controller;

  const PasswordInput({
    super.key,
    this.lengthPasswordRequirementConditions = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return CustomInput(
      label: 'Email',
      iconData: Icons.email_outlined,
      hintText: 'Enter your email',
      controller: controller,
      validator: _validatePassword,
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      helperText: "Password must contain at least 8 characters.",
      helperIcon: Icons.info,
    );
  }

  String? _validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return "The password cannot be empty.";
    }
    if (lengthPasswordRequirementConditions && password.length < 3) {
      return "The password must contain at least 3 characters.";
    }
    if (lengthPasswordRequirementConditions && password.length > 16) {
      return "The password cannot exceed 16 characters.";
    }
    return null;
  }
}
