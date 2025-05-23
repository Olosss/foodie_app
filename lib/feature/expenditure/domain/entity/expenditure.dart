import 'package:foodie_app/feature/expenditure/domain/entity/cost.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/expenditure.freezed.dart';

@freezed
class Expenditure with _$Expenditure {
  const factory Expenditure({
    required String payerUid,
    required List<Cost> cost,
    required String name,
    required DateTime time,
  }) = _Expenditure;
}
