import 'package:foodie_app/feature/expenditure/domain/entity/cost.dart';

class CostMapper {
  Cost fromJson(Map<String, dynamic> json) {
    return Cost(
      userUid: json['userUid'] as String,
      value: (json['value'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson(Cost cost) {
    return <String, dynamic>{
      'userUid': cost.userUid,
      'value': cost.value,
    };
  }
}
