import 'package:foodie_app/core/expenditure/domain/entity/expenditure.dart';
import 'package:foodie_app/core/expenditure/domain/repository/expenditure_repository_interface.dart';

class GetRoomExpendituresUseCase {
  final ExpenditureRepositoryInterface expenditureRepository;

  GetRoomExpendituresUseCase({
    required this.expenditureRepository,
  });

  Future<List<Expenditure>> call({
    required String roomId,
  }) async {
    return expenditureRepository.getRoomExpenditures(
      roomId: roomId,
    );
  }
}