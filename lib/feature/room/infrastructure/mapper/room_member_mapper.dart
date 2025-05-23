import 'package:foodie_app/feature/room/domain/entity/room_member.dart';

class RoomMemberMapper {
  RoomMember fromJson(Map<String, dynamic> json) {
    return RoomMember(
      uid: json['uid'],
      userName: (json['userName']),
    );
  }

  Map<String, dynamic> toJson(RoomMember roomMember) {
    return <String, dynamic>{
      'uid': roomMember.uid,
      'userName': roomMember.userName,
    };
  }
}
