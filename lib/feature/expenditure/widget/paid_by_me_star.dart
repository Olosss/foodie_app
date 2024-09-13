import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/feature/auth/notifier/user_notifier.dart';
import 'package:foodie_app/styles/styles.dart';

class PaidByMeStar extends ConsumerWidget {
  const PaidByMeStar({
    super.key,
    required this.userUid,
    this.size,
  });
  final String userUid;
  final double? size;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeData theme = Theme.of(context);

    final bool isUserPayer = ref.watch(userNotifierProvider).when(
          initial: () => false,
          notLoggedIn: () => false,
          logged: (User userState) {
            return userState.uid == userUid;
          },
        );

    return Visibility(
      visible: isUserPayer,
      child: Icon(
        Icons.star_outlined,
        color: theme.colorScheme.scrim,
        size: size ?? (Spacers.small + Spacers.extraSmall),
      ),
    );
  }
}
