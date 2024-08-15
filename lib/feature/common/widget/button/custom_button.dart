import 'package:flutter/material.dart';
import 'package:foodie_app/styles/app_border_radius.dart';
import 'package:foodie_app/styles/styles.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Gradient? gradient;
  final BoxBorder? border;
  final VoidCallback onTap;
  final Widget? image;

  const CustomButton({
    super.key,
    required this.label,
    this.gradient,
    this.border,
    required this.onTap,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: AppBorderRadius.borderRadiusSmall,
          border: border,
          gradient: gradient,
        ),
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: Paddings.paddingMedium(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                image != null
                    ? Padding(
                        padding: EdgeInsets.only(
                          right: Spacers.medium,
                        ),
                        child: image!)
                    : SizedBox.shrink(),
                Text(
                  label,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
