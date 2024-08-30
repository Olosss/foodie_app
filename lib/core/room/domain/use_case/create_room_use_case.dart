import 'package:foodie_app/core/room/domain/entity/room.dart';
import 'package:foodie_app/core/room/domain/entity/room_member.dart';
import 'package:foodie_app/core/room/domain/repository/room_repository_interface.dart';
import 'package:uuid/uuid.dart';

class CreateRoomUseCase {
  CreateRoomUseCase({
    required this.roomRepository,
  });

  final RoomRepositoryInterface roomRepository;

  Future<void> call({
    required String roomName,
    required String uid,
    required String userName,
  }) async {
    return roomRepository.createRoom(
      room: Room(
        name: roomName,
        joinKey: const Uuid().v6(),
        users: <RoomMember>[
          RoomMember(
            uid: uid,
            userName: userName,
          ),
        ],
        userIds: <String>[uid],
      ),
    );
  }
}
