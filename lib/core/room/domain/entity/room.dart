import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:foodie_app/core/room/domain/entity/room_member.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/room.freezed.dart';
part 'generated/room.g.dart';

@Freezed(toJson: true)
class Room with _$Room {
  const factory Room({
    required String id,
    required String name,
    required String joinKey,
    required List<RoomMember> users,
    required List<String> userIds,
  }) = _Room;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);

  factory Room.fromSnapshot(QueryDocumentSnapshot<Map<String, dynamic>> qds) {
    final Map<String, dynamic> data = qds.data();
    final List<Map<String, dynamic>> usersList =
        data['users'].cast<Map<String, dynamic>>();
    final List<RoomMember> users = usersList.map(RoomMember.fromJson).toList();
    final List<String> userIds = data['userIds'].cast<String>();

    return Room(
      id: qds.id,
      name: data['name'],
      joinKey: data['joinKey'],
      users: users,
      userIds: userIds,
    );
  }
}

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
