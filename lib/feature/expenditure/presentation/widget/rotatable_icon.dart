import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:foodie_app/core/styles/styles.dart';

class RotatableIcon extends StatelessWidget {
  const RotatableIcon({
    super.key,
    required this.animation,
  });
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: theme.extension<AppGradients>()?.buttonGradient,
        borderRadius: AppBorderRadius.borderRadiusSmall,
      ),
      child: Padding(
        padding: Paddings.paddingSmall(),
        child: AnimatedBuilder(
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: (90 * animation.value) * math.pi / 180,
              child: child,
            );
          },
          animation: animation,
          child: const Icon(
            Icons.arrow_forward_ios_outlined,
            size: Spacers.extraSmall + Spacers.small,
          ),
        ),
      ),
    );
  }
}
