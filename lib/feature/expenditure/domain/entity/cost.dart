import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/cost.freezed.dart';

@freezed
class Cost with _$Cost {
  const factory Cost({
    required String userUid,
    required double value,
  }) = _Cost;

  static double getTotalCost(List<Cost> costs) =>
      costs.fold(0, (double sum, Cost item) => sum + item.value);
}
