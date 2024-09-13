import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/core/expenditure/domain/entity/cost.dart';
import 'package:foodie_app/core/expenditure/domain/entity/expenditure.dart';
import 'package:foodie_app/core/expenditure/domain/entity/extension/cost_extension.dart';
import 'package:foodie_app/feature/expenditure/widget/date_row.dart';
import 'package:foodie_app/feature/expenditure/widget/expenditure_user_row.dart';
import 'package:foodie_app/feature/expenditure/widget/paid_by_row.dart';
import 'package:foodie_app/styles/styles.dart';

class ExpenditureExpandedTile extends ConsumerWidget {
  const ExpenditureExpandedTile({
    super.key,
    required this.animation,
    required this.roomId,
    required this.expenditure,
  });

  final Expenditure expenditure;
  final String roomId;

  final Animation<double> animation;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeData theme = Theme.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: theme.extension<AppGradients>()?.backgroundGradient,
        borderRadius: AppBorderRadius.borderRadiusSmall,
      ),
      child: Padding(
        padding: Paddings.paddingSmall(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  expenditure.name,
                  style: theme.textTheme.titleSmall,
                ),
                const Spacer(),
                Text(
                  expenditure.cost.getTotalCost().toStringAsFixed(2),
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
            Spacers.verticalUltraSmall(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                PaidByRow(
                  userUid: expenditure.payerUid,
                  roomId: roomId,
                ),
                const Spacer(),
                DateRow(
                  date: expenditure.time,
                ),
              ],
            ),
            SizeTransition(
              sizeFactor: animation,
              axisAlignment: -1.0,
              child: Column(
                children: <Widget>[
                  Spacers.verticalMedium(),
                  ...expenditure.cost.map(
                    (Cost cost) => ExpenditureUserRow(
                      cost: cost,
                      roomId: roomId,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
