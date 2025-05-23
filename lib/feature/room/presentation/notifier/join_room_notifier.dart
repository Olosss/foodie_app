import 'package:foodie_app/feature/room/di/providers.dart';
import 'package:foodie_app/feature/auth/presentation/notifier/state/user_state.dart';
import 'package:foodie_app/feature/auth/presentation/notifier/user_notifier.dart';
import 'package:foodie_app/feature/room/domain/use_case/join_room_use_case.dart';
import 'package:foodie_app/feature/room/presentation/notifier/rooms_notifier.dart';
import 'package:foodie_app/feature/room/presentation/notifier/state/join_room_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/join_room_notifier.g.dart';

@riverpod
class JoinRoomNotifier extends _$JoinRoomNotifier {
  late JoinRoomUseCase _joinRoomUseCase;

  @override
  JoinRoomState build() {
    _joinRoomUseCase = ref.watch(joinRoomUseCaseProvider);

    return const JoinRoomState.init();
  }

  Future<void> joinRoom({
    required String joinKey,
    required String userRoomName,
  }) async {
    state = const JoinRoomState.loading();
    try {
      final UserLogged userState = ref.read(userNotifierProvider) as UserLogged;

      await _joinRoomUseCase(
        roomKey: joinKey,
        uid: userState.user.uid,
        userName: userRoomName,
      );

      ref.invalidate(roomsNotifierProvider);

      state = const JoinRoomState.done();
    } catch (error) {
      state = JoinRoomState.error(error);
    }
  }
}
