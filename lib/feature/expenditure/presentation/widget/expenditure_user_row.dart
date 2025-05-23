import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/core/styles/styles.dart';
import 'package:foodie_app/core/utils/utils.dart';
import 'package:foodie_app/feature/expenditure/domain/entity/cost.dart';
import 'package:foodie_app/feature/expenditure/presentation/widget/paid_by_me_star.dart';
import 'package:foodie_app/feature/room/domain/entity/room.dart';
import 'package:foodie_app/feature/room/presentation/notifier/rooms_notifier.dart';

class ExpenditureUserRow extends ConsumerWidget {
  const ExpenditureUserRow({
    super.key,
    required this.cost,
    required this.roomId,
  });

  final Cost cost;
  final String roomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ThemeData theme = Theme.of(context);
    final String? userName = ref.watch(
      roomsNotifierProvider.select(
        (AsyncValue<List<Room>> data) =>
            data.asData?.value.findUserName(cost.userUid, roomId),
      ),
    );

    return Row(
      children: <Widget>[
        Text(
          userName?.capitalizeFirstLetter() ?? '-',
          style: theme.textTheme.labelMedium,
        ),
        Spacers.horizontalExtraSmall(),
        PaidByMeStar(
          userUid: cost.userUid,
        ),
        const Spacer(),
        Text(
          cost.value.toStringAsFixed(2),
          style: theme.textTheme.titleMedium,
        ),
      ],
    );
  }
}
