import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodie_app/core/room/domain/entity/room.dart';
import 'package:foodie_app/core/room/domain/entity/room_member.dart';
import 'package:foodie_app/core/room/domain/repository/room_repository_interface.dart';

class RoomRepository implements RoomRepositoryInterface {
  RoomRepository({required this.firestore});

  final FirebaseFirestore firestore;

  @override
  Future<void> createRoom({
    required Room room,
  }) async {
    final CollectionReference<Object?> rooms = firestore.collection('rooms');
    await rooms.add(
      room.toJson(),
    );
  }

  @override
  Future<Room> joinRoom({
    required Room room,
    required String roomId,
    required String uid,
    required String userName,
  }) async {
    CollectionReference<Map<String, dynamic>> rooms =
        firestore.collection('rooms');

    room.users.add(
      RoomMember(
        uid: uid,
        userName: userName,
      ),
    );

    room.userIds.add(uid);

    await rooms.doc(roomId).set(
          room.toJson(),
        );
    return room;
  }

  @override
  Future<(Room, String)> getRoomByJoinKey({
    required String roomKey,
  }) async {
    final CollectionReference<Map<String, dynamic>> rooms =
        firestore.collection('rooms');
    final Query<Map<String, dynamic>> query =
        rooms.where('joinKey', isEqualTo: roomKey);
    final QuerySnapshot<Map<String, dynamic>> snapshot = await query.get();
    return (Room.fromJson(snapshot.docs.first.data()), snapshot.docs.first.id);
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
          (QueryDocumentSnapshot<Map<String, dynamic>> snapshot) =>
              Room.fromJson(
            snapshot.data(),
          ),
        )
        .toList();
  }
}
