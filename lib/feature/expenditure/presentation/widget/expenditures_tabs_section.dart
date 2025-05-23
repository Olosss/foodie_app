import 'package:flutter/material.dart';
import 'package:foodie_app/core/styles/styles.dart';
import 'package:foodie_app/feature/expenditure/domain/entity/expenditure.dart';
import 'package:foodie_app/feature/expenditure/presentation/widget/expenditure_summary.dart';
import 'package:foodie_app/feature/expenditure/presentation/widget/expenditures_context_switch.dart';
import 'package:foodie_app/feature/expenditure/presentation/widget/expenditures_timeline.dart';

class ExpendituresTabsSection extends StatefulWidget {
  const ExpendituresTabsSection({
    super.key,
    required this.expenditures,
    required this.roomId,
    required this.debtMap,
  });

  final List<Expenditure> expenditures;
  final Map<String, double> debtMap;

  final String roomId;

  @override
  State<ExpendituresTabsSection> createState() =>
      _ExpendituresTabsSectionState();
}

class _ExpendituresTabsSectionState extends State<ExpendituresTabsSection>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ExpendituresContextSwitch(
          controller: _tabController,
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              Padding(
                padding: Paddings.paddingHorizontalMedium(),
                child: ExpendituresTimeline(
                  expenditures: widget.expenditures,
                  roomId: widget.roomId,
                ),
              ),
              Padding(
                padding: Paddings.paddingHorizontalMedium(),
                child: ExpenditureSummary(
                  roomId: widget.roomId,
                  debtMap: widget.debtMap,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
