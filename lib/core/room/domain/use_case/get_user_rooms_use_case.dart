import 'package:foodie_app/core/room/domain/entity/room.dart';
import 'package:foodie_app/core/room/domain/repository/room_repository_interface.dart';

class GetUserRoomsUseCase {
  GetUserRoomsUseCase({
    required this.roomRepository,
  });

  final RoomRepositoryInterface roomRepository;

  Future<List<Room>> call({
    required String uid,
  }) async {
    try {
      final xd = await roomRepository.getUserRooms(uid: uid);
      print(xd);
      return xd;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
