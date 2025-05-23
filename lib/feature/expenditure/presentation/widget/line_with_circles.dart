import 'package:flutter/material.dart';
import 'package:foodie_app/core/styles/styles.dart';

class LineWithCircles extends StatelessWidget {
  const LineWithCircles({
    super.key,
    this.height,
  });
  final double? height;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    final DecoratedBox dot = DecoratedBox(
      decoration: BoxDecoration(
        color: theme.colorScheme.secondaryFixedDim,
        shape: BoxShape.circle,
      ),
      child: const SizedBox.square(
        dimension: Spacers.extraSmall,
      ),
    );

    return Stack(
      children: <Widget>[
        dot,
        Positioned(
          top: Spacers.ultraSmall,
          left: 0,
          right: 0,
          bottom: -Spacers.ultraSmall,
          child: Center(
            child: Container(
              width: 1,
              height: height,
              color: theme.colorScheme.secondaryFixedDim,
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: dot,
        ),
      ],
    );
  }
}
