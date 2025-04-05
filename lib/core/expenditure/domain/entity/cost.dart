import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/cost.freezed.dart';
part 'generated/cost.g.dart';

@freezed
class Cost with _$Cost {
  const factory Cost({
    required String userUid,
    required double value,
  }) = _Cost;

  factory Cost.fromJson(Map<String, dynamic> json) => _$CostFromJson(json);

  static double getTotalCost(List<Cost> costs) =>
      costs.fold(0, (double sum, Cost item) => sum + item.value);
}
