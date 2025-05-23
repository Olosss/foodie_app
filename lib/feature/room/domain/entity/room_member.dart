import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/room_member.freezed.dart';

@freezed
class RoomMember with _$RoomMember {
  const factory RoomMember({
    required String uid,
    required String userName,
    @Default(false) bool isCurrentUser,
  }) = _RoomMember;

  const RoomMember._();
}
