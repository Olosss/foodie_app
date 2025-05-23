import 'package:flutter/material.dart';
import 'package:foodie_app/core/presentation/widget/button/gradient_button.dart';
import 'package:foodie_app/core/presentation/widget/button/outlined_custom_button.dart';
import 'package:foodie_app/core/styles/styles.dart';
import 'package:go_router/go_router.dart';

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog({
    super.key,
    required this.helperText,
  });

  final String helperText;

  void _onCancelTap({
    required BuildContext context,
  }) {
    context.pop(false);
  }

  void _onConfirmTap({
    required BuildContext context,
  }) {
    context.pop(true);
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return AlertDialog(
      insetPadding: Paddings.paddingMedium(),
      title: Text(
        'Confirm Room Closure',
        style: theme.textTheme.bodyLarge,
      ),
      content: Text(
        helperText,
        style: theme.textTheme.headlineMedium,
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: <Widget>[
        Row(
          children: <Widget>[
            Flexible(
              child: OutlinedCustomButton(
                label: 'Cancel',
                onTap: () => _onCancelTap(
                  context: context,
                ),
              ),
            ),
            Spacers.horizontalMedium(),
            Flexible(
              child: GradientButton(
                label: 'Confirm',
                onTap: () => _onConfirmTap(
                  context: context,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
