import 'package:collection/collection.dart';
import 'package:foodie_app/feature/room/domain/entity/room.dart';
import 'package:foodie_app/feature/room/domain/entity/room_member.dart';

extension RoomListExtensions on List<Room> {
  String? findUserName(String userUid, String roomId) {
    final Room? room = firstWhereOrNull(
      (Room room) => room.id == roomId,
    );

    if (room != null) {
      final RoomMember? roomMember = room.users.firstWhereOrNull(
        (RoomMember roomMember) => roomMember.uid == userUid,
      );
      return roomMember?.userName;
    }
    return null;
  }
}
