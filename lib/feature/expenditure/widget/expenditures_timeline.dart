import 'package:flutter/material.dart';
import 'package:foodie_app/core/expenditure/domain/entity/expenditure.dart';
import 'package:foodie_app/feature/expenditure/widget/expenditure_row.dart';
import 'package:foodie_app/styles/styles.dart';

class ExpendituresTimeline extends StatelessWidget {
  const ExpendituresTimeline({
    super.key,
    required this.expenditures,
    required this.roomId,
  });
  final List<Expenditure> expenditures;
  final String roomId;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverPadding(
          padding: Paddings.paddingVerticalExtraSmall(),
          sliver: SliverList.builder(
            itemCount: expenditures.length,
            itemBuilder: (BuildContext context, int index) {
              return ExpenditureRow(
                expenditure: expenditures[index],
                roomId: roomId,
                isFirst: index == 0,
                isLast: index == (expenditures.length - 1),
              );
            },
          ),
        ),
      ],
    );
  }
}
