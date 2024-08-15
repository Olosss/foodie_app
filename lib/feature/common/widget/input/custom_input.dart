import 'package:flutter/material.dart';
import 'package:foodie_app/styles/app_border_radius.dart';
import 'package:foodie_app/styles/spacers.dart';

class CustomInput extends StatelessWidget {
  final String label;
  final IconData iconData;
  final String hintText;

  const CustomInput({
    super.key,
    required this.label,
    required this.iconData,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: theme.inputDecorationTheme.labelStyle,
        ),
        Spacers.verticalSmall(),
        TextFormField(
          style: theme.inputDecorationTheme.labelStyle,
          decoration: InputDecoration(
            prefixIcon: Icon(iconData),
            hintText: hintText,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: AppBorderRadius.borderRadiusSmall,
            ),
          ),
        ),
      ],
    );
  }
}
