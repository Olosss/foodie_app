import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/room_member.freezed.dart';
part 'generated/room_member.g.dart';

@Freezed(toJson: true)
class RoomMember with _$RoomMember {
  const factory RoomMember({
    required String uid,
    required String userName,
  }) = _RoomMember;

  factory RoomMember.fromJson(Map<String, dynamic> json) =>
      _$RoomMemberFromJson(json);
}
