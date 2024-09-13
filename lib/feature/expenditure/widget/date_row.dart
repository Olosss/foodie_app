import 'package:flutter/material.dart';
import 'package:foodie_app/styles/styles.dart';
import 'package:foodie_app/utils/date_format_utils.dart';

class DateRow extends StatelessWidget {
  const DateRow({
    super.key,
    required this.date,
  });

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    String formattedDate = DateFormatUtils.appDateFormat().format(date);

    return Row(
      children: <Widget>[
        const Icon(
          Icons.calendar_today_outlined,
          size: Spacers.small + Spacers.extraSmall,
        ),
        Spacers.horizontalExtraSmall(),
        Text(
          formattedDate,
          style: theme.textTheme.labelSmall,
        ),
      ],
    );
  }
}
