import 'package:flutter/material.dart';
import 'package:foodie_app/core/room/domain/entity/room.dart';

class RoomTile extends StatelessWidget {
  const RoomTile({
    super.key,
    required this.room,
  });

  final Room room;

  @override
  Widget build(BuildContext context) {
    return Text(room.name);
  }
}
