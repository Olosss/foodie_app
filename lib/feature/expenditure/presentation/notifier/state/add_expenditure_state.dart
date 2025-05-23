import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/add_expenditure_state.freezed.dart';

@freezed
sealed class AddExpenditureState with _$AddExpenditureState {
  const factory AddExpenditureState.initial() = AddExpenditureStateInitial;

  const factory AddExpenditureState.loading() = AddExpenditureStateLoading;

  const factory AddExpenditureState.error({
    required Object error,
  }) = AddExpenditureStateError;

  const factory AddExpenditureState.done() = AddExpenditureStateDone;
}
