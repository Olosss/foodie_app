import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/core/expenditure/domain/entity/expenditure.dart';
import 'package:foodie_app/feature/common/widget/error_content.dart';
import 'package:foodie_app/feature/common/widget/loading/pot_loading_animation.dart';
import 'package:foodie_app/feature/expenditure/notifier/room_expenditures_notifier.dart';
import 'package:foodie_app/feature/expenditure/widget/expenditures_tabs_section.dart';

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

class _ExpendituresSectionState extends ConsumerState<ExpendituresSection>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<Expenditure>> expenditures = ref.watch(
      roomExpendituresNotifierProvider(
        roomId: widget.roomId,
      ),
    );

    return expenditures.when(
      data: (List<Expenditure> data) {
        return ExpendituresTabsSection(
          expenditures: data,
          roomId: widget.roomId,
        );
      },
      error: (Object error, _) {
        return ErrorContent(
          error: error,
        );
      },
      loading: () {
        return const PotLoadingAnimation();
      },
    );
  }
}
