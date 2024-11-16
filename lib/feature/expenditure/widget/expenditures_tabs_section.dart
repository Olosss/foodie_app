import 'package:flutter/material.dart';
import 'package:foodie_app/core/expenditure/domain/entity/expenditure.dart';
import 'package:foodie_app/feature/expenditure/widget/expenditure_summary.dart';
import 'package:foodie_app/feature/expenditure/widget/expenditures_context_switch.dart';
import 'package:foodie_app/feature/expenditure/widget/expenditures_timeline.dart';
import 'package:foodie_app/styles/styles.dart';

class ExpendituresTabsSection extends StatefulWidget {
  const ExpendituresTabsSection({
    super.key,
    required this.expenditures,
    required this.roomId,
  });

  final List<Expenditure> expenditures;
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
                  expenditures: widget.expenditures,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
