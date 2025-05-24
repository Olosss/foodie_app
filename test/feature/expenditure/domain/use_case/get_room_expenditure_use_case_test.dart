import 'package:flutter_test/flutter_test.dart';
import 'package:foodie_app/feature/expenditure/domain/entity/expenditure.dart';
import 'package:foodie_app/feature/expenditure/domain/use_case/get_room_expenditures_use_case.dart';
import 'package:mocktail/mocktail.dart';
import '../../mocks/mock_expenditure_repository.dart';
import '../../test_data/expenditure_test_data.dart';

void main() {
  late GetRoomExpendituresUseCase useCase;
  late MockExpenditureRepository mockExpenditureRepository;

  setUp(() {
    mockExpenditureRepository = MockExpenditureRepository();
    useCase = GetRoomExpendituresUseCase(
      expenditureRepository: mockExpenditureRepository,
    );
  });

  test(
    'should get expenditures for the room from the repository and sort them by time descending',
    () async {
      when(
        () => mockExpenditureRepository.getRoomExpenditures(
          roomId: tRoomId1,
        ),
      ).thenAnswer(
        (_) async => tExpendituresList,
      );

      final List<Expenditure> result = await useCase(roomId: tRoomId1);

      expect(result, tExpendituresList);

      verify(
        () => mockExpenditureRepository.getRoomExpenditures(roomId: tRoomId1),
      ).called(1);

      verifyNoMoreInteractions(mockExpenditureRepository);
    },
  );
}
