import 'package:flutter/material.dart';
import 'package:foodie_app/feature/common/widget/app_divider.dart';

class ListSeparator extends StatefulWidget {
  const ListSeparator({
    super.key,
    required this.scrollController,
  });

  final ScrollController scrollController;

  @override
  State<ListSeparator> createState() => _ListSeparatorState();
}

class _ListSeparatorState extends State<ListSeparator> {
  @override
  void initState() {
    super.initState();

    widget.scrollController.addListener(scrollControllerListener);
  }

  void scrollControllerListener() {
    if (!mounted) {
      return;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double opacity = 0;
    if (widget.scrollController.hasClients) {
      final num data = widget.scrollController.offset.clamp(1, 18 * 4);
      opacity = (data / 18 * 4) / 18;
    }

    final ThemeData theme = Theme.of(context);

    return Opacity(
      opacity: opacity,
      child: AppDivider(
        color: theme.colorScheme.secondaryFixed,
      ),
    );
  }
}
