import 'package:foodie_app/core/room/domain/entity/room_member.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/room.freezed.dart';
part 'generated/room.g.dart';

@Freezed(toJson: true)
class Room with _$Room {
  const factory Room({
    required String name,
    required String joinKey,
    required List<RoomMember> users,
    required List<String> userIds,
  }) = _Room;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}
