import 'package:foodie_app/feature/expenditure/domain/repository/expenditure_repository_interface.dart';
import 'package:foodie_app/feature/expenditure/domain/use_case/add_expenditure_use_case.dart';
import 'package:foodie_app/feature/expenditure/domain/use_case/calculate_debt_map_use_case.dart';
import 'package:foodie_app/feature/expenditure/domain/use_case/get_room_expenditures_use_case.dart';
import 'package:foodie_app/feature/expenditure/infrastructure/expenditure_repository.dart';
import 'package:foodie_app/feature/expenditure/infrastructure/mapper/cost_mapper.dart';
import 'package:foodie_app/feature/expenditure/infrastructure/mapper/expenditure_mapper.dart';
import 'package:foodie_app/feature/user/di/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/providers.g.dart';

@Riverpod(keepAlive: true)
ExpenditureRepositoryInterface expenditureRepository(
  ExpenditureRepositoryRef ref,
) {
  return ExpenditureRepository(
    firestore: ref.watch(firebaseFirestoreProvider),
    expenditureMapper: ref.watch(expenditureMapperProvider),
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

@riverpod
GetRoomExpendituresUseCase getRoomExpendituresUseCase(
  GetRoomExpendituresUseCaseRef ref,
) {
  return GetRoomExpendituresUseCase(
    expenditureRepository: ref.watch(expenditureRepositoryProvider),
  );
}

@riverpod
CalculateDebtUseCase calculateDebtUseCase(
  CalculateDebtUseCaseRef ref,
) {
  return CalculateDebtUseCase();
}

@Riverpod(keepAlive: true)
CostMapper costMapper(
  CostMapperRef ref,
) {
  return CostMapper();
}

@Riverpod(keepAlive: true)
ExpenditureMapper expenditureMapper(
  ExpenditureMapperRef ref,
) {
  return ExpenditureMapper(
    costMapper: ref.watch(
      costMapperProvider,
    ),
  );
}
