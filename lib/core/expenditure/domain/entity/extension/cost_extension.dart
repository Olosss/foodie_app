import 'package:foodie_app/core/expenditure/domain/entity/cost.dart';

extension CostExtension on List<Cost> {
  double getTotalCost() {
    return fold(
      0,
      (
        double sum,
        Cost item,
      ) =>
          sum + item.value,
    );
  }
}
