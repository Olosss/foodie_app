import 'package:flutter/material.dart';
import 'package:foodie_app/feature/common/widget/input/custom_input.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    super.key,
    required this.label,
    required this.hintText,
    this.controller,
    this.iconData,
    this.validator,
    this.focusNode,
  });
  final String label;
  final IconData? iconData;
  final String hintText;
  final TextEditingController? controller;
  final String? Function(String? value)? validator;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return CustomInput(
      controller: controller,
      label: label,
      iconData: iconData,
      hintText: hintText,
      validator: validator,
      focusNode: focusNode,
    );
  }
}
