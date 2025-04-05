import 'package:foodie_app/core/room/domain/repository/room_repository_interface.dart';

class CloseRoomUseCase {
  CloseRoomUseCase({
    required this.roomRepository,
  });

  final RoomRepositoryInterface roomRepository;

  Future<void> call({
    required String roomId,
  }) async {
    return roomRepository.deleteRoom(
      roomId: roomId,
    );
  }
}