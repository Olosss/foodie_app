import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie_app/core/styles/styles.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    super.key,
    required this.label,
    required this.hintText,
    this.validator,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.helperText,
    this.helperIcon,
    this.iconData,
    this.focusNode,
    this.inputFormatters,
  });

  final String label;
  final IconData? iconData;
  final String hintText;
  final String? Function(String? value)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? helperText;
  final IconData? helperIcon;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: theme.inputDecorationTheme.labelStyle,
        ),
        Spacers.verticalSmall(),
        TextFormField(
          focusNode: focusNode,
          obscureText: obscureText,
          obscuringCharacter: '●',
          keyboardType: keyboardType,
          controller: controller,
          style: theme.inputDecorationTheme.labelStyle,
          validator: validator,
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            helper: helperText != null && helperIcon != null
                ? Row(
                    children: <Widget>[
                      Icon(
                        helperIcon,
                        size: Spacers.medium,
                      ),
                      Spacers.horizontalExtraSmall(),
                      Text(
                        helperText!,
                        style: theme.inputDecorationTheme.helperStyle,
                      ),
                    ],
                  )
                : null,
            prefixIcon: iconData == null ? null : Icon(iconData),
            hintText: hintText,
            filled: true,
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
            errorStyle: theme.inputDecorationTheme.errorStyle,
          ),
        ),
      ],
    );
  }
}
