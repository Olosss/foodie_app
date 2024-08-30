import 'package:flutter/material.dart';
import 'package:foodie_app/styles/app_border_radius.dart';
import 'package:foodie_app/styles/spacers.dart';

class CustomInput extends StatelessWidget {

  const CustomInput({
    super.key,
    required this.label,
    required this.iconData,
    required this.hintText,
    this.validator,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.helperText,
    this.helperIcon,
  });
  final String label;
  final IconData iconData;
  final String hintText;
  final String? Function(String? value)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? helperText;
  final IconData? helperIcon;

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
          obscureText: obscureText,
          obscuringCharacter: '●',
          keyboardType: keyboardType,
          controller: controller,
          style: theme.inputDecorationTheme.labelStyle,
          validator: validator,
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
            prefixIcon: Icon(iconData),
            hintText: hintText,
            filled: true,
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
