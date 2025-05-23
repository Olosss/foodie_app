import 'package:foodie_app/core/expenditure/domain/entity/cost.dart';
import 'package:foodie_app/core/expenditure/domain/entity/expenditure.dart';

class CalculateDebtUseCase {
  Map<String, double> call(List<Expenditure> expenditures, String userUid) {
    Map<String, double> debtMap = <String, double>{};

    for (Expenditure expenditure in expenditures) {
      for (Cost cost in expenditure.cost) {
        if (expenditure.payerUid == userUid && cost.userUid == userUid) {
          continue;
        }

        if (expenditure.payerUid == userUid) {
          debtMap[cost.userUid] = (debtMap[cost.userUid] ?? 0) + cost.value;
        } else if (cost.userUid == userUid) {
          debtMap[expenditure.payerUid] =
              (debtMap[expenditure.payerUid] ?? 0) - cost.value;
        }
      }
    }

    return debtMap;
  }
}
