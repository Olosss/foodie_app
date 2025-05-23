import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/core/presentation/widget/text_divider_row.dart';
import 'package:foodie_app/core/styles/styles.dart';
import 'package:foodie_app/feature/room/domain/entity/room.dart';
import 'package:foodie_app/feature/room/presentation/notifier/rooms_notifier.dart';

class RoomName extends ConsumerWidget {
  const RoomName({
    super.key,
    required this.roomId,
  });

  final String roomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String? roomName = ref.watch(
      roomsNotifierProvider.select(
        (AsyncValue<List<Room>> item) => item.asData?.value
            .firstWhereOrNull((Room element) => element.id == roomId)
            ?.name,
      ),
    );

    if (roomName == null) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: Paddings.paddingHorizontalMedium(),
      child: TextDividerRow(
        text: roomName,
      ),
    );
  }
}
