import 'package:foodie_app/feature/expenditure/domain/entity/expenditure.dart';

abstract class ExpenditureRepositoryInterface {
  Future<void> addExpenditure({
    required Expenditure expenditure,
    required String roomId,
  });

  Future<List<Expenditure>> getRoomExpenditures({
    required String roomId,
  });
}
