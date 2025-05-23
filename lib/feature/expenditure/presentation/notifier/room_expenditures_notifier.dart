import 'package:foodie_app/feature/expenditure/di/providers.dart';
import 'package:foodie_app/feature/auth/presentation/notifier/state/user_state.dart';
import 'package:foodie_app/feature/auth/presentation/notifier/user_notifier.dart';
import 'package:foodie_app/feature/expenditure/domain/entity/expenditure.dart';
import 'package:foodie_app/feature/expenditure/domain/use_case/calculate_debt_map_use_case.dart';
import 'package:foodie_app/feature/expenditure/domain/use_case/get_room_expenditures_use_case.dart';
import 'package:foodie_app/feature/expenditure/presentation/notifier/state/expenditures_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/room_expenditures_notifier.g.dart';

@riverpod
class RoomExpendituresNotifier extends _$RoomExpendituresNotifier {
  late GetRoomExpendituresUseCase _getRoomExpendituresUseCase;
  late CalculateDebtUseCase _calculateDebtUseCase;

  @override
  ExpendituresState build({
    required String roomId,
  }) {
    _getRoomExpendituresUseCase = ref.watch(getRoomExpendituresUseCaseProvider);
    _calculateDebtUseCase = ref.watch(calculateDebtUseCaseProvider);

    final String? userUID = ref.watch(
      userNotifierProvider.select(
        (UserState userState) =>
            (userState is UserLogged) ? userState.user.uid : null,
      ),
    );

    if (userUID != null) {
      _getExpendituresDebt(userUID);
    }

    return const ExpendituresState.loading();
  }

  Future<void> _getExpendituresDebt(String userUID) async {
    try {
      final List<Expenditure> expenditures =
          await _getRoomExpendituresUseCase(roomId: roomId);
      final Map<String, double> debtMap =
          _calculateDebtUseCase(expenditures, userUID);

      state = ExpendituresState.done(
        expenditures: expenditures,
        debtMap: debtMap,
      );

    } catch (error) {
      state = ExpendituresState.error(
        error: error,
      );
    }
  }
}
