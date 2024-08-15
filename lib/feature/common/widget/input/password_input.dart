import 'package:flutter/material.dart';
import 'package:foodie_app/feature/common/widget/input/custom_input.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomInput(
      label: 'Password',
      iconData: Icons.lock_clock_outlined,
      hintText: 'Enter your password',
    );
  }
}
