import 'package:flutter/material.dart';
import 'package:foodie_app/feature/expenditure/widget/expenditures_section.dart';
import 'package:foodie_app/feature/room/widget/room_details_header.dart';
import 'package:foodie_app/feature/room/widget/room_name.dart';
import 'package:foodie_app/styles/styles.dart';

class RoomPage extends StatelessWidget {
  const RoomPage({
    super.key,
    required this.roomId,
  });

  final String roomId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RoomDetailsHeader(
        roomId: roomId,
      ),
      body: Column(
        children: <Widget>[
          Spacers.verticalLarge(),
          RoomName(
            roomId: roomId,
          ),
          Spacers.verticalLarge(),
          Expanded(
            child: ExpendituresSection(
              roomId: roomId,
            ),
          ),
        ],
      ),
    );
  }
}
