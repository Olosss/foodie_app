import 'package:foodie_app/core/expenditure/domain/entity/cost.dart';
import 'package:foodie_app/core/expenditure/domain/entity/expenditure.dart';
import 'package:foodie_app/core/expenditure/domain/use_case/add_expenditure_use_case.dart';
import 'package:foodie_app/core/expenditure/providers.dart';
import 'package:foodie_app/feature/expenditure/notifier/room_expenditures_notifier.dart';
import 'package:foodie_app/feature/expenditure/notifier/state/add_expenditure_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/add_expenditure_notifier.g.dart';

@riverpod
class AddExpenditureNotifier extends _$AddExpenditureNotifier {
  late AddExpenditureUseCase _addExpenditureUseCase;

  @override
  AddExpenditureState build({
    required String roomId,
  }) {
    _addExpenditureUseCase = ref.watch(addExpenditureUseCaseProvider);

    return const AddExpenditureState.initial();
  }

  Future<void> addExpenditure({
    required String payerUid,
    required List<Cost> cost,
    required String name,
  }) async {
    state = const AddExpenditureState.loading();

    try {
      await _addExpenditureUseCase(
        expenditure: Expenditure(
          payerUid: payerUid,
          cost: cost,
          name: name,
          time: DateTime.now(),
        ),
        roomId: roomId,
      );

      ref.invalidate(
        roomExpendituresNotifierProvider(
          roomId: roomId,
        ),
      );

      state = const AddExpenditureState.done();
    } catch (error) {
      state = AddExpenditureState.error(
        error: error,
      );
    }
  }
}
