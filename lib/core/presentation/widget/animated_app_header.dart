import 'package:flutter/material.dart';
import 'package:foodie_app/core/styles/styles.dart';
import 'package:foodie_app/feature/room/presentation/widget/gloss_animation.dart';
import 'package:go_router/go_router.dart';

class AnimatedAppHeader extends StatelessWidget implements PreferredSizeWidget {
  const AnimatedAppHeader({
    super.key,
    required this.child,
    this.animate = false,
    this.pop = true,
  });

  final Widget child;
  final bool animate;
  final bool pop;

  void _onBackTap(BuildContext context) {
    context.pop();
  }

  @override
  Size get preferredSize => const Size.fromHeight(76);

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
                                  onTap: () => _onBackTap(context),
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
}
