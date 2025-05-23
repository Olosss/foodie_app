
import 'package:foodie_app/feature/expenditure/domain/entity/expenditure.dart';
import 'package:foodie_app/feature/expenditure/domain/repository/expenditure_repository_interface.dart';

class AddExpenditureUseCase {
  AddExpenditureUseCase({
    required this.expenditureRepository,
  });

  final ExpenditureRepositoryInterface expenditureRepository;

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
