import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodie_app/feature/room/domain/entity/room.dart';
import 'package:foodie_app/feature/room/domain/entity/room_member.dart';
import 'package:foodie_app/feature/room/domain/repository/room_repository_interface.dart';
import 'package:foodie_app/feature/room/infrastructure/mapper/room_mapper.dart';
import 'package:uuid/uuid.dart';

class RoomRepository implements RoomRepositoryInterface {
  RoomRepository({
    required this.firestore,
    required this.roomMapper,
  });

  final FirebaseFirestore firestore;
  final RoomMapper roomMapper;

  @override
  Future<void> createRoom({
    required String roomName,
    required String uid,
    required String userName,
  }) async {
    final CollectionReference<Object?> rooms = firestore.collection('rooms');

    await rooms.add(
      <String, Object>{
        'name': roomName,
        'joinKey': const Uuid().v6(),
        'userIds': <String>[uid],
        'users': <Map<String, String>>[
          <String, String>{
            'uid': uid,
            'userName': userName,
          }
        ],
      },
    );
  }

  @override
  Future<void> deleteRoom({
    required String roomId,
  }) async {
    final CollectionReference<Object?> rooms = firestore.collection('rooms');

    await rooms.doc(roomId).delete();
  }

  @override
  Future<void> joinRoom({
    required Room room,
    required String uid,
    required String userName,
  }) async {
    CollectionReference<Map<String, dynamic>> rooms =
        firestore.collection('rooms');

    final List<RoomMember> users = room.users.toList();

    users.add(
      RoomMember(
        uid: uid,
        userName: userName,
      ),
    );

    final List<String> usersIds = room.userIds.toList();

    usersIds.add(uid);

    final Room dto = Room(
      id: room.id,
      name: room.name,
      joinKey: room.joinKey,
      users: users,
      userIds: usersIds,
    );

    ///TODO Add toJson method

    await rooms.doc(dto.id).set(
          roomMapper.toJson(room),
        );
  }

  @override
  Future<Room?> getRoomByJoinKey({
    required String roomKey,
  }) async {
    final CollectionReference<Map<String, dynamic>> rooms =
        firestore.collection('rooms');

    final Query<Map<String, dynamic>> query =
        rooms.where('joinKey', isEqualTo: roomKey);
    final QuerySnapshot<Map<String, dynamic>> snapshot = await query.get();

    if (snapshot.docs.isEmpty) {
      return null;
    }

    return roomMapper.fromSnapshot(snapshot.docs.first);
  }

  @override
  Future<List<Room>> getUserRooms({
    required String uid,
  }) async {
    final CollectionReference<Map<String, dynamic>> rooms =
        firestore.collection('rooms');

    final QuerySnapshot<Map<String, dynamic>> data =
        await rooms.where('userIds', arrayContains: uid).get();

    return data.docs
        .map(
          roomMapper.fromSnapshot,
        )
        .toList();
  }
}
