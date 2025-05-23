import 'package:flutter/material.dart';
import 'package:foodie_app/core/presentation/animations/below_page_button_location.dart';
import 'package:foodie_app/core/presentation/animations/floating_button_animator.dart';
import 'package:foodie_app/core/presentation/widget/button/gradient_button.dart';
import 'package:foodie_app/core/router/routes.dart';
import 'package:foodie_app/core/styles/styles.dart';
import 'package:foodie_app/feature/expenditure/presentation/widget/expenditures_section.dart';
import 'package:foodie_app/feature/room/presentation/widget/room_details_header.dart';
import 'package:foodie_app/feature/room/presentation/widget/room_name.dart';
import 'package:go_router/go_router.dart';

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
      setState(() {
        _widgetInitialized = true;
      });
    });
  }


  void onAddExpenditureTap(BuildContext context) {
    context.push(
      AddExpenditureRoute(id: widget.roomId).location,
    );
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
          label: 'Add Expense',
          onTap: () => onAddExpenditureTap(
            context,
          ),
          image: const Icon(
            Icons.add_box_outlined,
          ),
        ),
      ),
      floatingActionButtonAnimator: FloatingButtonAnimator(),
      floatingActionButtonLocation: _widgetInitialized
          ? FloatingActionButtonLocation.centerFloat
          : BelowPageButtonLocation(),
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
