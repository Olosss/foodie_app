import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/feature/auth/notifier/user_notifier.dart';
import 'package:foodie_app/styles/app_border.dart';
import 'package:foodie_app/styles/styles.dart';

class RoomsHeader extends ConsumerWidget implements PreferredSizeWidget {
  const RoomsHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return SafeArea(
      bottom: false,
      child: Stack(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: theme.extension<AppGradients>()?.primaryGradient,
              color: AppColors.surfaceGradientSecondColor,
              border: AppBorders.bottomBorder(
                theme.colorScheme.onSecondary,
              ),
            ),
            child: Column(
              children: [
                Spacers.verticalLarge(),
                Padding(
                  padding: Paddings.paddingHorizontalMedium(),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Your rooms",
                        style: theme.textTheme.bodyMedium,
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.add_business_outlined,
                        size: 28,
                      ),
                      Spacers.horizontalLarge(),
                      GestureDetector(
                        onTap: () => _onProfilePageTap(ref),
                        child: const Icon(
                          Icons.manage_accounts_outlined,
                          size: 28,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _onProfilePageTap(WidgetRef ref) {
    ///TODO Add redirection to profile page
    ref.read(userNotifierProvider.notifier).signOut();
  }

  @override
  Size get preferredSize => const Size.fromHeight(76);
}
