import 'package:flutter/material.dart';
import 'package:foodie_app/feature/common/widget/input/cost_input.dart';
import 'package:foodie_app/styles/styles.dart';

class UserExpenditureRow extends StatelessWidget {
  const UserExpenditureRow({
    super.key,
    required this.userName,
    this.controller,
    this.focusNode,
    this.validator,
  });

  final String userName;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? Function(String? value)? validator;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Padding(
      padding: Paddings.paddingHorizontalExtraSmall(),
      child: Row(
        children: <Widget>[
          Spacers.horizontalSmall(),
          Text(
            userName,
            style: theme.textTheme.headlineMedium,
          ),
          const Spacer(),
          SizedBox(
            width: Spacers.doubleExtraLarge + Spacers.small,
            child: CostInput(
              hintText: '0,00',
              controller: controller,
              focusNode: focusNode,
              validator: validator,
            ),
          ),
        ],
      ),
    );
  }
}
