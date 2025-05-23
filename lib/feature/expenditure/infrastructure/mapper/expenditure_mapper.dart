import 'package:foodie_app/feature/expenditure/domain/entity/cost.dart';
import 'package:foodie_app/feature/expenditure/domain/entity/expenditure.dart';
import 'package:foodie_app/feature/expenditure/infrastructure/mapper/cost_mapper.dart';

class ExpenditureMapper {
  ExpenditureMapper({required this.costMapper});

  final CostMapper costMapper;

  Expenditure fromJson(Map<String, dynamic> json) {
    final List<Cost> cost = (json['cost'] as List<dynamic>)
        .map(
          (dynamic costDto) => costMapper.fromJson(
            costDto as Map<String, dynamic>,
          ),
        )
        .toList();

    return Expenditure(
      payerUid: json['payerUid'] as String,
      cost: cost,
      name: json['name'] as String,
      time: DateTime.parse(json['time'] as String),
    );
  }

  Map<String, dynamic> toJson(Expenditure expenditure) {
    return <String, dynamic>{
      'payerUid': expenditure.payerUid,
      'cost': expenditure.cost.map(costMapper.toJson).toList(),
      'name': expenditure.name,
      'time': expenditure.time.toIso8601String(),
    };
  }
}
