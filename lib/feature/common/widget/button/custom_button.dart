import 'package:flutter/material.dart';
import 'package:foodie_app/styles/app_border_radius.dart';
import 'package:foodie_app/styles/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    this.gradient,
    this.border,
    required this.onTap,
    this.image,
    this.isLoading = false,
  });

  final String label;
  final Gradient? gradient;
  final BoxBorder? border;
  final VoidCallback onTap;
  final Widget? image;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
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
              children: <Widget>[
                image != null
                    ? Padding(
                        padding: const EdgeInsets.only(
                          right: Paddings.medium,
                        ),
                        child: image!,
                      )
                    : const SizedBox.shrink(),
                isLoading
                    ? const SizedBox.square(
                        dimension: 20,
                        child: CircularProgressIndicator(),
                      )
                    : Text(
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
