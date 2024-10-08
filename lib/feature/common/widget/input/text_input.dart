import 'package:flutter/material.dart';
import 'package:foodie_app/feature/common/widget/input/custom_input.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    super.key,
    required this.label,
    required this.iconData,
    required this.hintText,
    this.controller,
  });
  final String label;
  final IconData iconData;
  final String hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return CustomInput(
      controller: controller,
      label: label,
      iconData: iconData,
      hintText: hintText,
    );
  }
}
