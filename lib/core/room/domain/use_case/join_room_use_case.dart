import 'package:foodie_app/core/room/domain/entity/room.dart';
import 'package:foodie_app/core/room/domain/entity/room_member.dart';
import 'package:foodie_app/core/room/domain/exception/user_has_already_joined_the_room_exception.dart';
import 'package:foodie_app/core/room/domain/exception/users_in_room_count_limit_exceeded_exception.dart';
import 'package:foodie_app/core/room/domain/repository/room_repository_interface.dart';

class JoinRoomUseCase {
  JoinRoomUseCase({
    required this.roomRepository,
  });

  final RoomRepositoryInterface roomRepository;

  Future<Room> call({
    required String roomKey,
    required String uid,
    required String userName,
  }) async {
    final (Room, String) room =
        await roomRepository.getRoomByJoinKey(roomKey: roomKey);
    if (room.$1.users.any(
      (RoomMember roomMember) => roomMember.uid == uid,
    )) {
      throw UserHasAlreadyJoinedTheRoomException();
    }

    ///TODO Add this from env variable
    if (room.$1.users.length >= 5) {
      throw UsersInRoomCountLimitExceededException();
    }
    return roomRepository.joinRoom(
      room: room.$1,
      roomId: room.$2,
      uid: uid,
      userName: userName,
    );
  }
}
