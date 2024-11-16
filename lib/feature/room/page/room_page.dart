import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:foodie_app/feature/common/widget/button/gradient_button.dart';
import 'package:foodie_app/feature/expenditure/widget/expenditures_section.dart';
import 'package:foodie_app/feature/room/widget/room_details_header.dart';
import 'package:foodie_app/feature/room/widget/room_name.dart';
import 'package:foodie_app/styles/styles.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({
    super.key,
    required this.roomId,
  });

  final String roomId;

  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage>
    with SingleTickerProviderStateMixin {
  bool _widgetInitialized = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(milliseconds: 400)).then((_) {
        setState(() {
          _widgetInitialized = true;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RoomDetailsHeader(
        roomId: widget.roomId,
      ),
      floatingActionButton: Padding(
        padding: Paddings.paddingMedium(),
        child: GradientButton(
          label: 'Add new expenditure',
          onTap: () {},
        ),
      ),
      floatingActionButtonAnimator: _AppFloatingButtonAnimator(),
      floatingActionButtonLocation: _widgetInitialized
          ? FloatingActionButtonLocation.centerFloat
          : BelowThePageButtonLocation(),
      body: Column(
        children: <Widget>[
          Spacers.verticalLarge(),
          RoomName(
            roomId: widget.roomId,
          ),
          Spacers.verticalLarge(),
          Expanded(
            child: ExpendituresSection(
              roomId: widget.roomId,
            ),
          ),
        ],
      ),
    );
  }
}

class _AppFloatingButtonAnimator extends FloatingActionButtonAnimator {
  @override
  Offset getOffset({
    required Offset begin,
    required Offset end,
    required double progress,
  }) {
    double factor = 1;
    if ((progress * 2) < 1) {
      factor = (progress * 2);
    }

    return end.copyWith(
      dx: end.dx,
      dy: begin.dy + (end.dy - begin.dy) * factor,
    );
  }

  @override
  Animation<double> getRotationAnimation({required Animation<double> parent}) {
    return Tween<double>(begin: 0.0, end: 0).animate(parent);
  }

  @override
  Animation<double> getScaleAnimation({required Animation<double> parent}) {
    return Tween<double>(begin: 1.0, end: 2.0).animate(parent);
  }
}

class BelowThePageButtonLocation extends FloatingActionButtonLocation {
  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    return Offset(
      0,
      scaffoldGeometry.scaffoldSize.height,
    );
  }
}
