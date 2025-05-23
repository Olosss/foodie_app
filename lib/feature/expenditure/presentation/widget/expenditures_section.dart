import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/core/presentation/widget/error_content.dart';
import 'package:foodie_app/core/presentation/widget/loading/pot_loading_animation.dart';
import 'package:foodie_app/feature/expenditure/presentation/notifier/room_expenditures_notifier.dart';
import 'package:foodie_app/feature/expenditure/presentation/notifier/state/expenditures_state.dart';
import 'package:foodie_app/feature/expenditure/presentation/widget/expenditures_tabs_section.dart';

class ExpendituresSection extends ConsumerStatefulWidget {
  const ExpendituresSection({
    super.key,
    required this.roomId,
  });

  final String roomId;

  @override
  ConsumerState<ExpendituresSection> createState() =>
      _ExpendituresSectionState();
}

class _ExpendituresSectionState extends ConsumerState<ExpendituresSection> {
  @override
  Widget build(BuildContext context) {
    ExpendituresState notifier = ref.watch(
      roomExpendituresNotifierProvider(
        roomId: widget.roomId,
      ),
    );

    return notifier.map(
      done: (ExpendituresStateDone data) {
        return ExpendituresTabsSection(
          expenditures: data.expenditures,
          roomId: widget.roomId,
          debtMap: data.debtMap,
        );
      },
      error: (ExpendituresStateError state) {
        return ErrorContent(
          error: state.error,
        );
      },
      loading: (_) {
        return const PotLoadingAnimation();
      },
    );
  }
}
