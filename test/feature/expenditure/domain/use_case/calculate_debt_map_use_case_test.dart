import 'package:flutter_test/flutter_test.dart';
import 'package:foodie_app/feature/expenditure/domain/entity/expenditure.dart';
import 'package:foodie_app/feature/expenditure/domain/use_case/calculate_debt_map_use_case.dart';

import '../../test_data/expenditure_test_data.dart';

void main() {
  late CalculateDebtUseCase useCase;

  setUp(() {
    useCase = CalculateDebtUseCase();
  });

  void main() {
    late CalculateDebtUseCase useCase;

    setUp(() {
      useCase = CalculateDebtUseCase();
    });

    test('should return empty debt map when expenditures list is empty', () {
      final Map<String, double> result = useCase(<Expenditure>[], tUserUid1);
      expect(result, <String, double>{});
    });

    test(
      'should return debt only for user2 when user1 pays for user2 and has no interaction with user3',
      () {
        final Map<String, double> result =
            useCase(tExpendituresList, tUserUid1);
        expect(result, <String, double>{
          tUserUid2: 15.5,
        });
      },
    );

    test('should return negative debts when others pay for the user', () {
      final Map<String, double> result = useCase(tExpendituresList, tUserUid2);
      expect(result.length, 2);
      expect(result, <String, double>{
        tUserUid1: -15.5,
        tUserUid3: 5.0,
      });
    });
  }
}
