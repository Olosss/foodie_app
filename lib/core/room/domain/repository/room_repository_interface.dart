abstract class RoomRepositoryInterface {
  Future<void> createRoom({
    required String roomName,
    required String uid,
    required String userName,
  });

  Future<void> joinRoom({
    required String roomKey,
    required String uid,
    required String userName
  });
}
