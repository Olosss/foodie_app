import 'package:flutter/material.dart';
import 'package:foodie_app/core/expenditure/domain/entity/expenditure.dart';
import 'package:foodie_app/feature/expenditure/widget/expenditure_expanded_tile.dart';
import 'package:foodie_app/feature/expenditure/widget/expenditure_timeline_row_axis.dart';
import 'package:foodie_app/styles/styles.dart';

class ExpenditureRow extends StatefulWidget {
  const ExpenditureRow({
    super.key,
    required this.expenditure,
    required this.isFirst,
    required this.isLast,
    required this.roomId,
  });

  final Expenditure expenditure;
  final String roomId;
  final bool isFirst;
  final bool isLast;

  @override
  State<ExpenditureRow> createState() => _ExpenditureRowState();
}

class _ExpenditureRowState extends State<ExpenditureRow>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutExpo,
    );
  }

  void _toggleExpansion() {
    _isExpanded = !_isExpanded;
    if (_isExpanded) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleExpansion,
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ExpenditureTimelineRowAxis(
              animation: _animation,
              isLast: widget.isLast,
              isFirst: widget.isFirst,
            ),
            Spacers.horizontalMedium(),
            Expanded(
              child: Padding(
                padding: Paddings.paddingVerticalExtraSmall(),
                child: ExpenditureExpandedTile(
                  animation: _animation,
                  roomId: widget.roomId,
                  expenditure: widget.expenditure,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
