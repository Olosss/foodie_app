import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodie_app/feature/room/domain/entity/room.dart';
import 'package:foodie_app/feature/room/domain/entity/room_member.dart';
import 'package:foodie_app/feature/room/infrastructure/mapper/room_member_mapper.dart';

class RoomMapper {
  RoomMapper({
    required this.roomMemberMapper,
  });

  final RoomMemberMapper roomMemberMapper;

  Room fromSnapshot(QueryDocumentSnapshot<Map<String, dynamic>> qds) {
    final Map<String, dynamic> data = qds.data();
    final List<Map<String, dynamic>> usersList =
        data['users'].cast<Map<String, dynamic>>();
    final List<RoomMember> users =
        usersList.map(roomMemberMapper.fromJson).toList();
    final List<String> userIds = data['userIds'].cast<String>();

    return Room(
      id: qds.id,
      name: data['name'],
      joinKey: data['joinKey'],
      users: users,
      userIds: userIds,
    );
  }

  Map<String, dynamic> toJson(Room room) {
    return <String, dynamic>{
      'id': room.id,
      'name': room.name,
      'joinKey': room.joinKey,
      'users': room.users.map(roomMemberMapper.toJson),
      'userIds': room.userIds,
    };
  }
}
