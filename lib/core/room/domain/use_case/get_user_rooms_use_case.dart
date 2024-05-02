import 'package:foodie_app/core/room/domain/entity/room.dart';
import 'package:foodie_app/core/room/domain/repository/room_repository_interface.dart';

class GetUserRoomsUseCase {
  final RoomRepositoryInterface roomRepository;

  GetUserRoomsUseCase({
    required this.roomRepository,
  });

  Future<List<Room>> call({
    required String uid,
  }) async {
    return roomRepository.getUserRooms(uid: uid);
  }
}