import 'package:flutter/material.dart';
import 'package:foodie_app/core/styles/styles.dart';
import 'package:foodie_app/feature/expenditure/presentation/widget/line_with_circles.dart';
import 'package:foodie_app/feature/expenditure/presentation/widget/rotatable_icon.dart';

class ExpenditureTimelineRowAxis extends StatelessWidget {
  const ExpenditureTimelineRowAxis({
    super.key,
    required this.animation,
    required this.isFirst,
    required this.isLast,
  });

  final Animation<double> animation;
  final bool isFirst;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        isFirst
            ? Spacers.verticalExtraSmall()
            : const LineWithCircles(
                height: Spacers.medium,
              ),
        Spacers.verticalSmall(),
        RotatableIcon(
          animation: animation,
        ),
        Spacers.verticalSmall(),
        Expanded(
          child: isLast ? const SizedBox.shrink() : const LineWithCircles(),
        ),
      ],
    );
  }
}
