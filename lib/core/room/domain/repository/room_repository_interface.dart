import 'package:foodie_app/core/room/domain/entity/room.dart';

abstract class RoomRepositoryInterface {
  Future<void> createRoom({
    required Room room,
  });

  Future<Room> joinRoom({
    required Room room,
    required String uid,
    required String userName,
    required String roomId,
  });

  Future<(Room, String)> getRoomByJoinKey({
    required String roomKey,
  });

  Future<List<Room>> getUserRooms({
    required String uid,
  });
}
