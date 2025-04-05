import 'package:flutter/material.dart';
import 'package:foodie_app/core/room/domain/entity/room_member.dart';
import 'package:foodie_app/feature/expenditure/widget/payer_pill.dart';
import 'package:foodie_app/utils/string_utils.dart';

class PayerChips extends StatelessWidget {
  const PayerChips({
    super.key,
    required this.users,
    required this.onPayerPillTap,
    required this.selectedPayerId,
  });

  final List<RoomMember> users;
  final void Function(String payerId) onPayerPillTap;
  final String selectedPayerId;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: users
          .map(
            (RoomMember item) => PayerPill(
              userName: item.userName.capitalizeFirstLetter(),
              isSelected: item.uid == selectedPayerId,
              onTap: () => onPayerPillTap(item.uid),
            ),
          )
          .toList(),
    );
  }
}
