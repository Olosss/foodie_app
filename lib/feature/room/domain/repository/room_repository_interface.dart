import 'package:foodie_app/feature/room/domain/entity/room.dart';

abstract class RoomRepositoryInterface {
  Future<void> createRoom({
    required String roomName,
    required String uid,
    required String userName,
  });

  Future<void> joinRoom({
    required Room room,
    required String uid,
    required String userName,
  });

  Future<Room?> getRoomByJoinKey({
    required String roomKey,
  });

  Future<List<Room>> getUserRooms({
    required String uid,
  });

  Future<void> deleteRoom({
    required String roomId,
  });
}
