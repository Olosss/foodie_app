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

  factory Expenditure.fromJson(Map<String, dynamic> json) => _$ExpenditureFromJson(json);
}