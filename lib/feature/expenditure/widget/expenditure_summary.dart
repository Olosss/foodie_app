import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/core/expenditure/domain/entity/expenditure.dart';
import 'package:foodie_app/feature/auth/notifier/state/user_state.dart';
import 'package:foodie_app/feature/auth/notifier/user_notifier.dart';
import 'package:foodie_app/feature/expenditure/widget/users_summary_list.dart';
import 'package:foodie_app/styles/styles.dart';

class ExpenditureSummary extends ConsumerWidget {
  const ExpenditureSummary({
    super.key,
    required this.roomId,
    required this.expenditures,
  });

  final String roomId;
  final List<Expenditure> expenditures;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String? userUID = ref.watch(
      userNotifierProvider.select(
        (UserState userState) =>
            (userState is UserLogged) ? userState.user.uid : null,
      ),
    );

    if (userUID == null) {
      return const SizedBox.shrink();
    }

    final Map<String, double> debtMap =
        expenditures.calculateDebtMap(userUID, roomId);

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
