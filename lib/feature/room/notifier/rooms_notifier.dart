import 'package:foodie_app/core/room/domain/entity/room.dart';
import 'package:foodie_app/core/room/domain/use_case/get_user_rooms_use_case.dart';
import 'package:foodie_app/core/room/providers.dart';
import 'package:foodie_app/feature/auth/notifier/state/user_state.dart';
import 'package:foodie_app/feature/auth/notifier/user_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/rooms_notifier.g.dart';

@riverpod
class RoomsNotifier extends _$RoomsNotifier {
  late GetUserRoomsUseCase _getUserRoomsUseCase;

  @override
  Future<List<Room>> build() async{
    _getUserRoomsUseCase = ref.watch(getUserRoomsUseCaseProvider);

    final String? userUID = ref.watch(
      userNotifierProvider.select(
        (UserState userState) =>
            (userState is UserLogged) ? userState.user.uid : null,
      ),
    );

    if(userUID == null){
      return <Room>[];
    }

    return _getUserRoomsUseCase(uid: userUID);
  }
}
