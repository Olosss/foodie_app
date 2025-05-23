import 'package:foodie_app/feature/expenditure/domain/entity/expenditure.dart';
import 'package:foodie_app/feature/expenditure/domain/repository/expenditure_repository_interface.dart';

class GetRoomExpendituresUseCase {
  GetRoomExpendituresUseCase({
    required this.expenditureRepository,
  });

  final ExpenditureRepositoryInterface expenditureRepository;

  Future<List<Expenditure>> call({
    required String roomId,
  }) async {
    final List<Expenditure> expenditure = await expenditureRepository.getRoomExpenditures(
      roomId: roomId,
    );
    expenditure.sort((Expenditure a, Expenditure b) => b.time.compareTo(a.time));
    return expenditure;
  }
}
