import 'package:flutter/material.dart';

class RoomsEmptyState extends StatelessWidget {
  const RoomsEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return SliverToBoxAdapter(
      child: Center(
        child: Text(
          'You currently do not belong to any room.',
          style: theme.textTheme.labelSmall,
        ),
      ),
    );
  }
}
