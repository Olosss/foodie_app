import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodie_app/core/room/domain/repository/room_repository_interface.dart';

class RoomRepository implements RoomRepositoryInterface {
  final FirebaseFirestore firestore;

  RoomRepository({required this.firestore});

  @override
  Future<void> createRoom({
    required String roomName,
    required String uid,
    required String userName,
  }) async {
    final CollectionReference rooms = firestore.collection('rooms');
    await rooms.add({
      'name': roomName,
      'joinKey': "testKey",
      'users': [
        {
          'uid': uid,
          'userName': userName,
        }
      ],
    });
  }

  @override
  Future<void> joinRoom({
    required String roomKey,
    required String uid,
    required String userName,
  }) async {
    CollectionReference rooms = firestore.collection('rooms');

    final query = rooms.where("joinKey", isEqualTo: roomKey);

    query.get().then((value) {
      final data = value.docs.first;

      final userList = data['users'] as List<dynamic>;

      userList.add({"uid": uid, "userName": userName});

      rooms.doc(value.docs.first.id).set(({
            'name': value.docs.first["name"],
            'joinKey': "testKey",
            'users': userList,
          }));
    });
  }
}
