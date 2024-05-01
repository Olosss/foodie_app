import 'package:foodie_app/core/expenditure/domain/entity/expenditure.dart';
import 'package:foodie_app/core/expenditure/domain/repository/expenditure_repository_interface.dart';

class AddExpenditureUseCase {
  final ExpenditureRepositoryInterface expenditureRepository;

  AddExpenditureUseCase({
    required this.expenditureRepository,
  });

  Future<void> call({
    required Expenditure expenditure,
    required String roomId,
  }) async {
    return expenditureRepository.addExpenditure(
      expenditure: expenditure,
      roomId: roomId,
    );
  }
}
