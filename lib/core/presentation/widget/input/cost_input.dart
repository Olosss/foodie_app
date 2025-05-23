import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie_app/core/utils/utils.dart';
import 'package:foodie_app/core/styles/styles.dart';

class CostInput extends StatelessWidget {
  const CostInput({
    super.key,
    required this.hintText,
    this.controller,
    this.validator,
    this.focusNode,
  });

  final String hintText;
  final TextEditingController? controller;
  final String? Function(String? value)? validator;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return TextFormField(
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegexUtils.maxTwoDecimalPlacesRegex),
      ],
      controller: controller,
      validator: validator,
      cursorHeight: Spacers.medium,
      style: theme.textTheme.titleSmall,
      textAlign: TextAlign.right,
      focusNode: focusNode,
      decoration: InputDecoration(
        errorStyle: const TextStyle(
          fontSize: 0,
        ),
        isDense: true,
        contentPadding: Paddings.paddingMicroSmall(),
        hintText: hintText,
        filled: true,
        fillColor: theme.scaffoldBackgroundColor,
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: theme.colorScheme.error),
          borderRadius: AppBorderRadius.borderRadiusSmall,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: theme.colorScheme.error),
          borderRadius: AppBorderRadius.borderRadiusSmall,
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: AppBorderRadius.borderRadiusSmall,
        ),
      ),
    );
  }
}
