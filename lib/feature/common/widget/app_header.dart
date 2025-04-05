import 'package:flutter/material.dart';
import 'package:foodie_app/styles/styles.dart';
import 'package:go_router/go_router.dart';

class AppHeader extends StatelessWidget{
  const AppHeader({
    super.key,
    required this.title,
    this.pop = true,
  });

  final String title;
  final bool pop;

  void _onIconTap(BuildContext context){
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        border: AppBorders.bottomBorder(
          theme.colorScheme.secondaryFixedDim,
        ),
      ),
      child: Padding(
        padding: Paddings.paddingVerticalMediumHorizontalExtraSmall(),
        child: Row(
          children: <Widget>[
            GestureDetector(
              onTap: () => _onIconTap(context),
              child: const SizedBox.square(
                dimension: Spacers.extraLarge,
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: Spacers.medium + Spacers.ultraSmall,
                ),
              ),
            ),
            Expanded(
              child: Text(
                title,
                style: theme.textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ),
            Spacers.horizontalExtraLarge(),
          ],
        ),
      ),
    );
  }
}
