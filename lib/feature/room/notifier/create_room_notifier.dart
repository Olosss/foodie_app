import 'package:foodie_app/core/room/domain/use_case/create_room_use_case.dart';
import 'package:foodie_app/core/room/providers.dart';
import 'package:foodie_app/feature/auth/notifier/state/sign_in_state.dart';
import 'package:foodie_app/feature/auth/notifier/state/user_state.dart';
import 'package:foodie_app/feature/auth/notifier/user_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/create_room_notifier.g.dart';

@riverpod
class CreateRoomNotifier extends _$CreateRoomNotifier {
  late CreateRoomUseCase _createRoomUseCase;

  @override
  SignInState build() {
    _createRoomUseCase = ref.watch(createRoomUseCaseProvider);

    return const SignInState.init();
  }

  Future<void> createRoom() async {
    state = const SignInState.loading();
    try {
      final UserLogged xd =ref.read(userNotifierProvider) as UserLogged;

      await _createRoomUseCase(
        roomName: 'Pokoj 1',
        uid: xd.user.uid,
        userName: 'olek',
      );
      state = const SignInState.done();
    } on Exception catch (error) {
      state = SignInState.error(error);
    }
  }
}