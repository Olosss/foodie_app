import 'package:foodie_app/feature/room/domain/entity/room.dart';
import 'package:foodie_app/feature/room/domain/repository/room_repository_interface.dart';

class GetUserRoomsUseCase {
  GetUserRoomsUseCase({
    required this.roomRepository,
  });

  final RoomRepositoryInterface roomRepository;

  Future<List<Room>> call({
    required String uid,
  }) async {
    return roomRepository.getUserRooms(uid: uid);
  }
}
