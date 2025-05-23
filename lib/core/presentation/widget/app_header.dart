import 'package:flutter/material.dart';
import 'package:foodie_app/core/styles/styles.dart';
import 'package:go_router/go_router.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  const AppHeader({
    super.key,
    required this.title,
    this.pop = true,
    this.safeArea = true,
  });

  final String title;
  final bool pop;
  final bool safeArea;

  void _onIconTap(BuildContext context) {
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return SafeArea(
      top: safeArea,
      bottom: false,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: AppBorders.bottomBorder(
            theme.colorScheme.secondaryFixedDim,
          ),
        ),
        child: Padding(
          padding: Paddings.paddingHorizontalSmall(),
          child: Padding(
            padding: Paddings.paddingVerticalLarge(),
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
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(76);
}
