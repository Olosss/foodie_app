import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/core/presentation/widget/animated_app_header.dart';
import 'package:foodie_app/core/router/routes.dart';
import 'package:foodie_app/core/styles/styles.dart';
import 'package:foodie_app/feature/auth/presentation/notifier/user_notifier.dart';
import 'package:go_router/go_router.dart';

class RoomsHeader extends ConsumerWidget implements PreferredSizeWidget {
  const RoomsHeader({super.key});

  void _onJoinRoomTap(BuildContext context) {
    context.push(const RoomEntranceRoute().location);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeData theme = Theme.of(context);

    return AnimatedAppHeader(
      animate: true,
      pop: false,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            'Welcome back!',
            style: theme.textTheme.bodyMedium,
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => _onJoinRoomTap(context),
            child: const Icon(
              Icons.add_business_outlined,
              size: 28,
            ),
          ),
          Spacers.horizontalLarge(),
          GestureDetector(
            onTap: () => _onLogoutTap(ref),
            child: const Icon(
              Icons.logout,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }

  void _onLogoutTap(WidgetRef ref) {
    ref.read(userNotifierProvider.notifier).signOut();
  }

  @override
  Size get preferredSize => const Size.fromHeight(76);
}
