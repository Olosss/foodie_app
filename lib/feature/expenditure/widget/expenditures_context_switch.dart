import 'package:flutter/material.dart';
import 'package:foodie_app/styles/styles.dart';

class ExpendituresContextSwitch extends StatelessWidget {
  const ExpendituresContextSwitch({
    super.key,
    required this.controller,
  });

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Padding(
      padding: Paddings.paddingHorizontalMedium(),
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: theme.extension<AppGradients>()?.backgroundGradient,
          borderRadius: AppBorderRadius.borderRadiusUltraSmall,
        ),
        child: Padding(
          padding: Paddings.paddingNanoSmall(),
          child: TabBar(
            splashFactory: NoSplash.splashFactory,
            padding: EdgeInsets.zero,
            controller: controller,
            tabs: <Widget>[
              Text(
                'Timeline',
                style: theme.textTheme.titleSmall,
              ),
              Text(
                'Summary',
                style: theme.textTheme.titleSmall,
              ),
            ],
            indicator: BoxDecoration(
              gradient: theme.extension<AppGradients>()?.buttonGradient,
              borderRadius: AppBorderRadius.borderMediumSmall,
            ),
            dividerColor: Colors.transparent,
            indicatorSize: TabBarIndicatorSize.tab,
            labelStyle: theme.textTheme.titleSmall,
            labelPadding: Paddings.paddingVerticalMicroSmall(),
            unselectedLabelStyle: theme.textTheme.titleSmall,
          ),
        ),
      ),
    );
  }
}
