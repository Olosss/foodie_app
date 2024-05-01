
import 'package:foodie_app/core/expenditure/domain/repository/expenditure_repository_interface.dart';
import 'package:foodie_app/core/expenditure/domain/use_case/add_expenditure_use_case.dart';
import 'package:foodie_app/core/expenditure/infrastructure/expenditure_repository.dart';
import 'package:foodie_app/core/user/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/providers.g.dart';

@Riverpod(keepAlive: true)
ExpenditureRepositoryInterface expenditureRepository(
    ExpenditureRepositoryRef ref,
    ) {
  return ExpenditureRepository(
      firestore: ref.watch(firebaseFirestoreProvider)
  );
}

@riverpod
AddExpenditureUseCase addExpenditureUseCase(
    AddExpenditureUseCaseRef ref,
    ) {
  return AddExpenditureUseCase(
    expenditureRepository: ref.watch(expenditureRepositoryProvider),
  );
}