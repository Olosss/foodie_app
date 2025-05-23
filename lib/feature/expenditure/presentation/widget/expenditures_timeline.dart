import 'package:flutter/material.dart';
import 'package:foodie_app/core/presentation/widget/list_separator.dart';
import 'package:foodie_app/core/styles/styles.dart';
import 'package:foodie_app/feature/expenditure/domain/entity/expenditure.dart';
import 'package:foodie_app/feature/expenditure/presentation/widget/expenditure_row.dart';

class ExpendituresTimeline extends StatefulWidget {
  const ExpendituresTimeline({
    super.key,
    required this.expenditures,
    required this.roomId,
  });

  final List<Expenditure> expenditures;
  final String roomId;

  @override
  State<ExpendituresTimeline> createState() => _ExpendituresTimelineState();
}

class _ExpendituresTimelineState extends State<ExpendituresTimeline> {
  late final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacers.verticalMedium(),
        ListSeparator(
          scrollController: _scrollController,
        ),
        Expanded(
          child: CustomScrollView(
            controller: _scrollController,
            slivers: <Widget>[
              SliverPadding(
                padding: Paddings.paddingVerticalExtraSmall(),
                sliver: SliverList.builder(
                  itemCount: widget.expenditures.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ExpenditureRow(
                      expenditure: widget.expenditures[index],
                      roomId: widget.roomId,
                      isFirst: index == 0,
                      isLast: index == (widget.expenditures.length - 1),
                    );
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: SafeArea(
                  child: Spacers.verticalTripleExtraLarge(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
