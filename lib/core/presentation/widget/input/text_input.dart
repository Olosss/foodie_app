import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie_app/core/presentation/widget/input/custom_input.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    super.key,
    required this.label,
    required this.hintText,
    this.controller,
    this.iconData,
    this.validator,
    this.focusNode,
    this.inputFormatters,
  });
  final String label;
  final IconData? iconData;
  final String hintText;
  final TextEditingController? controller;
  final String? Function(String? value)? validator;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return CustomInput(
      inputFormatters: inputFormatters,
      controller: controller,
      label: label,
      iconData: iconData,
      hintText: hintText,
      validator: validator,
      focusNode: focusNode,
    );
  }
}
