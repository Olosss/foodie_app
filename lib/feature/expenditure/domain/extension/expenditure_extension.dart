import 'package:foodie_app/feature/expenditure/domain/entity/cost.dart';
import 'package:foodie_app/feature/expenditure/domain/entity/expenditure.dart';

extension ExpenditureExtension on List<Expenditure> {
  Map<String, double> calculateDebtMap(
    String userUid,
    String roomId,
  ) {
    Map<String, double> debtMap = <String, double>{};

    for (Expenditure expenditure in this) {
      for (Cost cost in expenditure.cost) {
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

  void updateDebtMap(
    Map<String, double> debtMap,
    List<Expenditure> expenditures,
    String userUid,
  ) {
    for (Expenditure expenditure in expenditures) {
      for (Cost cost in expenditure.cost) {
        if (expenditure.payerUid == userUid) {
          debtMap[cost.userUid] = (debtMap[cost.userUid] ?? 0) + cost.value;
        } else if (cost.userUid == userUid) {
          debtMap[expenditure.payerUid] =
              (debtMap[expenditure.payerUid] ?? 0) - cost.value;
        }
      }
    }
  }
}
