import 'package:foodie_app/feature/room/domain/entity/room_member.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/room.freezed.dart';

@freezed
class Room with _$Room {
  const factory Room({
    required String id,
    required String name,
    required String joinKey,
    required List<RoomMember> users,
    required List<String> userIds,
  }) = _Room;
}
