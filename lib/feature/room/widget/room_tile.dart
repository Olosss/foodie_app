import 'package:flutter/material.dart';
import 'package:foodie_app/core/room/domain/entity/room.dart';

class RoomTile extends StatelessWidget {
  final Room room;

  const RoomTile({
    super.key,
    required this.room,
  });

  @override
  Widget build(BuildContext context) {
    return Text(room.name);
  }
}
