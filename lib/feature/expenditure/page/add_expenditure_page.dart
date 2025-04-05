import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/core/room/domain/entity/room.dart';
import 'package:foodie_app/feature/expenditure/widget/add_expenditure_header.dart';
import 'package:foodie_app/feature/expenditure/widget/add_expenditures_section.dart';
import 'package:foodie_app/feature/room/notifier/rooms_notifier.dart';
import 'package:foodie_app/styles/styles.dart';

class AddExpenditurePage extends ConsumerWidget {
  const AddExpenditurePage({
    super.key,
    required this.roomId,
  });

  final String roomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeData theme = Theme.of(context);

    final Room? roomState = ref.watch(
      roomsNotifierProvider.select(
        (AsyncValue<List<Room>> item) => item.asData?.value.firstWhereOrNull(
          (Room element) => element.id == roomId,
        ),
      ),
    );

    return FractionallySizedBox(
      heightFactor: 0.9,
      alignment: Alignment.bottomCenter,
      child: Material(
        borderRadius: AppBorderRadius.borderRadiusTopMedium,
        color: theme.scaffoldBackgroundColor,
        child: Column(
          children: <Widget>[
            const AddExpenditureHeader(),
            Spacers.verticalSmall(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: Paddings.paddingMedium(),
                  child: roomState == null
                      ? const Text('Sorry we could not get users in your room')
                      : AddExpendituresSection(
                        users: roomState.users,
                        roomId: roomId,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
