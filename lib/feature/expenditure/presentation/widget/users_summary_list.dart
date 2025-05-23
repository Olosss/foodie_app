import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/feature/room/domain/entity/room.dart';
import 'package:foodie_app/feature/room/domain/extension/room_extension.dart';
import 'package:foodie_app/feature/room/presentation/notifier/rooms_notifier.dart';

class UsersSummaryList extends ConsumerWidget {
  const UsersSummaryList({
    super.key,
    required this.roomId,
    required this.debtMap,
  });

  final String roomId;
  final Map<String, double> debtMap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Room>> roomsState = ref.watch(
      roomsNotifierProvider,
    );

    return Column(
      children: debtMap.entries.map((MapEntry<String, double> item) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              roomsState.asData?.value.findUserName(item.key, roomId) ?? '',
            ),
            Text(
              item.value.toStringAsFixed(2),
            ),
          ],
        );
      }).toList(),
    );
  }
}
