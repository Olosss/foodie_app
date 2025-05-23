import 'package:foodie_app/feature/expenditure/domain/entity/expenditure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/expenditures_state.freezed.dart';

@freezed
sealed class ExpendituresState with _$ExpendituresState {
  const factory ExpendituresState.loading() = ExpendituresStateLoading;

  const factory ExpendituresState.error({
    required Object error,
  }) = ExpendituresStateError;

  const factory ExpendituresState.done({
    required List<Expenditure> expenditures,
    required Map<String, double> debtMap,
  }) = ExpendituresStateDone;
}
