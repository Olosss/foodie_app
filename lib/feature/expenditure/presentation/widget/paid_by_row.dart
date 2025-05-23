import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/core/styles/styles.dart';
import 'package:foodie_app/core/utils/utils.dart';
import 'package:foodie_app/feature/expenditure/presentation/widget/paid_by_me_star.dart';
import 'package:foodie_app/feature/room/domain/entity/room.dart';
import 'package:foodie_app/feature/room/domain/extension/room_extension.dart';
import 'package:foodie_app/feature/room/presentation/notifier/rooms_notifier.dart';

class PaidByRow extends ConsumerWidget {
  const PaidByRow({
    super.key,
    required this.userUid,
    required this.roomId,
  });
  final String userUid;
  final String roomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeData theme = Theme.of(context);
    final String? userName = ref.watch(
      roomsNotifierProvider.select(
        (AsyncValue<List<Room>> data) =>
            data.asData?.value.findUserName(userUid, roomId),
      ),
    );

    return Row(
      children: <Widget>[
        RichText(
          text: TextSpan(
            text: 'Paid by ',
            style: theme.textTheme.labelSmall,
            children: <InlineSpan>[
              TextSpan(
                text: userName?.capitalizeFirstLetter() ?? '-',
                style: theme.textTheme.labelMedium,
              ),
            ],
          ),
        ),
        Spacers.horizontalExtraSmall(),
        PaidByMeStar(
          userUid: userUid,
        ),
      ],
    );
  }
}
