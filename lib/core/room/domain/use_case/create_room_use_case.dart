import 'package:foodie_app/core/room/domain/repository/room_repository_interface.dart';

class CreateRoomUseCase {
  final RoomRepositoryInterface roomRepository;

  CreateRoomUseCase({
    required this.roomRepository,
  });

  Future<void> call({
    required String roomName,
    required String uid,
    required String userName,
  }) async {
    return roomRepository.createRoom(
      roomName: roomName,
      uid: uid,
      userName: userName,
    );
  }
}