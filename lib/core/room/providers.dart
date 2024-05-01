import 'package:foodie_app/core/room/domain/repository/room_repository_interface.dart';
import 'package:foodie_app/core/room/domain/use_case/create_room_use_case.dart';
import 'package:foodie_app/core/room/infrastructure/room_repository.dart';
import 'package:foodie_app/core/user/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/providers.g.dart';

@Riverpod(keepAlive: true)
RoomRepositoryInterface roomRepository(
    RoomRepositoryRef ref,
    ) {
  return RoomRepository(
    firestore: ref.watch(firebaseFirestoreProvider)
  );
}

@riverpod
CreateRoomUseCase createRoomUseCase(
    CreateRoomUseCaseRef ref,
    ) {
  return CreateRoomUseCase(
    roomRepository: ref.watch(roomRepositoryProvider),
  );
}