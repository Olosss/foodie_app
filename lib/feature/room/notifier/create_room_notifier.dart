import 'package:foodie_app/core/room/domain/use_case/create_room_use_case.dart';
import 'package:foodie_app/core/room/providers.dart';
import 'package:foodie_app/feature/auth/notifier/state/user_state.dart';
import 'package:foodie_app/feature/auth/notifier/user_notifier.dart';
import 'package:foodie_app/feature/room/notifier/rooms_notifier.dart';
import 'package:foodie_app/feature/room/notifier/state/create_room_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/create_room_notifier.g.dart';

@riverpod
class CreateRoomNotifier extends _$CreateRoomNotifier {
  late CreateRoomUseCase _createRoomUseCase;

  @override
  CreateRoomState build() {
    _createRoomUseCase = ref.watch(createRoomUseCaseProvider);

    return const CreateRoomState.init();
  }

  Future<void> createRoom({
    required String roomName,
    required String userRoomName,
  }) async {
    state = const CreateRoomState.loading();
    try {
      final UserLogged userState = ref.read(userNotifierProvider) as UserLogged;

      await _createRoomUseCase(
        roomName: roomName,
        uid: userState.user.uid,
        userName: userRoomName,
      );

      ref.invalidate(roomsNotifierProvider);

      state = const CreateRoomState.done();
    } catch (error) {
      state = CreateRoomState.error(error);
    }
  }
}
