import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/core/styles/styles.dart';
import 'package:foodie_app/feature/expenditure/presentation/widget/users_summary_list.dart';

class ExpenditureSummary extends ConsumerWidget {
  const ExpenditureSummary({
    super.key,
    required this.roomId,
    required this.debtMap,
  });

  final String roomId;
  final Map<String, double> debtMap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double totalDebt =
        debtMap.values.fold(0.0, (double sum, double value) => sum + value);

    return Column(
      children: <Widget>[
        Spacers.verticalMedium(),
        Text('You own ${totalDebt.toStringAsFixed(2)}'),
        Spacers.verticalExtraLarge(),
        UsersSummaryList(
          roomId: roomId,
          debtMap: debtMap,
        ),
      ],
    );
  }
}
