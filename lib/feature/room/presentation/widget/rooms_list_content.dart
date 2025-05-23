import 'package:flutter/material.dart';
import 'package:foodie_app/core/styles/styles.dart';
import 'package:foodie_app/feature/room/domain/entity/room.dart';
import 'package:foodie_app/feature/room/presentation/widget/room_tile.dart';

class RoomsListContent extends StatelessWidget {
  const RoomsListContent({
    super.key,
    required this.rooms,
  });

  final List<Room> rooms;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: rooms.length,
      itemBuilder: (BuildContext context, int index) {
        return RoomTile(
          room: rooms[index],
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Spacers.verticalMedium();
      },
    );
  }
}
