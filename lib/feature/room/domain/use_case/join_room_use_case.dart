import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:foodie_app/feature/room/domain/entity/room.dart';
import 'package:foodie_app/feature/room/domain/entity/room_member.dart';
import 'package:foodie_app/feature/room/domain/exception/room_not_found_exception.dart';
import 'package:foodie_app/feature/room/domain/exception/user_has_already_joined_the_room_exception.dart';
import 'package:foodie_app/feature/room/domain/exception/users_in_room_count_limit_exceeded_exception.dart';
import 'package:foodie_app/feature/room/domain/repository/room_repository_interface.dart';

class JoinRoomUseCase {
  JoinRoomUseCase({
    required this.roomRepository,
  });

  final RoomRepositoryInterface roomRepository;

  Future<void> call({
    required String roomKey,
    required String uid,
    required String userName,
  }) async {
    final Room? room = await roomRepository.getRoomByJoinKey(roomKey: roomKey);

    if(room == null){
      throw RoomNotFoundException();
    }

    if (room.users.any(
      (RoomMember roomMember) => roomMember.uid == uid,
    )) {
      throw UserHasAlreadyJoinedTheRoomException();
    }

    if (int.parse(dotenv.env['MAX_USERS_PER_ROOM']!) >= 5) {
      throw UsersInRoomCountLimitExceededException();
    }

    return roomRepository.joinRoom(
      room: room,
      uid: uid,
      userName: userName,
    );
  }
}
