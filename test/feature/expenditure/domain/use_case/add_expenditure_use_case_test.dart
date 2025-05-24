import 'package:flutter_test/flutter_test.dart';
import 'package:foodie_app/feature/expenditure/domain/use_case/add_expenditure_use_case.dart';
import 'package:mocktail/mocktail.dart';

import '../../mocks/mock_expenditure_repository.dart';
import '../../test_data/expenditure_test_data.dart';

void main() {
  late AddExpenditureUseCase useCase;
  late MockExpenditureRepository mockExpenditureRepository;

  setUp(() {
    mockExpenditureRepository = MockExpenditureRepository();
    useCase = AddExpenditureUseCase(
      expenditureRepository: mockExpenditureRepository,
    );
  });

  test(
    'should call addExpenditure on the repository with correct parameters',
    () async {
      when(
        () => mockExpenditureRepository.addExpenditure(
          expenditure: tExpenditure1Pizza,
          roomId: tRoomId1,
        ),
      ).thenAnswer(
        (_) async => Future<void>.value(),
      ); // Dla Future<void>

      await useCase(expenditure: tExpenditure1Pizza, roomId: tRoomId1);

      verify(
        () => mockExpenditureRepository.addExpenditure(
          expenditure: tExpenditure1Pizza,
          roomId: tRoomId1,
        ),
      ).called(1);

      verifyNoMoreInteractions(mockExpenditureRepository);
    },
  );
}
