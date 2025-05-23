import 'package:foodie_app/feature/room/di/providers.dart';
import 'package:foodie_app/feature/room/domain/use_case/close_room_use_case.dart';
import 'package:foodie_app/feature/room/presentation/notifier/rooms_notifier.dart';
import 'package:foodie_app/feature/room/presentation/notifier/state/close_room_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/close_room_notifier.g.dart';

@riverpod
class CloseRoomNotifier extends _$CloseRoomNotifier {
  late CloseRoomUseCase _closeRoomUseCase;

  @override
  CloseRoomState build() {
    _closeRoomUseCase = ref.watch(closeRoomUseCaseProvider);

    return const CloseRoomState.init();
  }

  Future<void> closeRoom({
    required String roomId,
  }) async {
    state = const CloseRoomState.loading();
    try {
      await _closeRoomUseCase(
        roomId: roomId,
      );

      ref.invalidate(roomsNotifierProvider);

      state = const CloseRoomState.done();
    } catch (error) {
      state = CloseRoomState.error(error);
    }
  }
}
