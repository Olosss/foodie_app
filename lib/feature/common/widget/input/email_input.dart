import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:foodie_app/feature/common/widget/input/custom_input.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({
    super.key,
    this.formatEmailRequirementConditions = false,
    this.controller,
  });
  final bool formatEmailRequirementConditions;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return CustomInput(
      controller: controller,
      label: 'Email',
      iconData: Icons.email_outlined,
      hintText: 'Enter your email',
      validator: _validateEmail,
      keyboardType: TextInputType.emailAddress,
    );
  }

  String? _validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'The email cannot be empty.';
    }
    if (!EmailValidator.validate(email)) {
      return 'Invalid email format.';
    }

    return null;
  }
}
