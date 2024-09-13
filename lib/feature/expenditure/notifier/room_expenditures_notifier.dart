import 'package:foodie_app/core/expenditure/domain/entity/expenditure.dart';
import 'package:foodie_app/core/expenditure/domain/use_case/get_room_expenditures_use_case.dart';
import 'package:foodie_app/core/expenditure/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/room_expenditures_notifier.g.dart';

@riverpod
class RoomExpendituresNotifier extends _$RoomExpendituresNotifier {
  late GetRoomExpendituresUseCase _getRoomExpendituresUseCase;

  @override
  Future<List<Expenditure>> build({
    required String roomId,
  }) async {
    _getRoomExpendituresUseCase = ref.watch(getRoomExpendituresUseCaseProvider);

    return _getRoomExpendituresUseCase(roomId: roomId);
  }
}
