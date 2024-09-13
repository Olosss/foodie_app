import 'package:flutter/material.dart';
import 'package:foodie_app/feature/room/widget/gloss_animation.dart';
import 'package:foodie_app/styles/styles.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  const AppHeader({
    super.key,
    required this.child,
    this.animate = false,
    this.pop = true,
  });

  final Widget child;
  final bool animate;
  final bool pop;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return SafeArea(
      bottom: false,
      child: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              GlossAnimation(
                animate: animate,
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  border: AppBorders.bottomBorder(
                    theme.colorScheme.secondaryFixedDim,
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Spacers.verticalLarge(),
                    Padding(
                      padding: Paddings.paddingHorizontalMedium(),
                      child: Row(
                        children: <Widget>[
                          Visibility(
                            visible: pop,
                            child: Row(
                              children: <Widget>[
                                GestureDetector(
                                  child: const Icon(
                                    Icons.arrow_back_ios_new_outlined,
                                    size: Spacers.medium + Spacers.ultraSmall,
                                  ),
                                ),
                                Spacers.horizontalLarge(),
                              ],
                            ),
                          ),
                          Expanded(
                            child: child,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(76);
}
