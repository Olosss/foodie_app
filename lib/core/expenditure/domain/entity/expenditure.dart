import 'package:foodie_app/core/expenditure/domain/entity/cost.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/expenditure.freezed.dart';
part 'generated/expenditure.g.dart';

@Freezed(toJson: true)
class Expenditure with _$Expenditure {
  const factory Expenditure({
    required String payerUid,
    required List<Cost> cost,
    required String name,
    required DateTime time,
  }) = _Expenditure;

  factory Expenditure.fromJson(Map<String, dynamic> json) =>
      _$ExpenditureFromJson(json);
}

extension RoomListExtensions on List<Expenditure> {
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
