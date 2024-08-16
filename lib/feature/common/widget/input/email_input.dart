import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:foodie_app/feature/common/widget/input/custom_input.dart';

class EmailInput extends StatelessWidget {
  final bool formatEmailRequirementConditions;
  final TextEditingController? controller;

  const EmailInput({
    super.key,
    this.formatEmailRequirementConditions = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return CustomInput(
      controller: controller,
      label: 'Email',
      iconData: Icons.lock_clock_outlined,
      hintText: 'Enter your password',
      validator: _validateEmail,
      keyboardType: TextInputType.emailAddress,
    );
  }

  String? _validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return "The email cannot be empty.";
    }
    if(!EmailValidator.validate(email)){
      return "Invalid email format.";
    }

    return null;
  }
}
