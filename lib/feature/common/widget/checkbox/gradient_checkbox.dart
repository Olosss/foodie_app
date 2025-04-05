import 'package:flutter/material.dart';
import 'package:foodie_app/styles/styles.dart';

class GradientCheckbox extends StatefulWidget {
  const GradientCheckbox({
    super.key,
    required this.value,
    this.onChanged,
    this.size = 20,
  });

  final bool value;
  final Function(bool)? onChanged;
  final double size;

  @override
  State<GradientCheckbox> createState() => _GradientCheckboxState();
}

class _GradientCheckboxState extends State<GradientCheckbox> {
  late bool _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.value;
  }

  @override
  void didUpdateWidget(GradientCheckbox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value) {
      _isChecked = widget.value;
    }
  }

  void _handleTap() {
    setState(() {
      _isChecked = !_isChecked;
    });
    widget.onChanged?.call(_isChecked);
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Material(
      color: Colors.transparent,
      child: GestureDetector(
        onTap: _handleTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: widget.size,
          height: widget.size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: _isChecked
                ? null
                : Border.all(
                    color: theme.colorScheme.secondaryFixed,
                  ),
            gradient: _isChecked
                ? theme.extension<AppGradients>()?.buttonGradient
                : null,
          ),
          child: _isChecked
              ? Icon(
                  Icons.check_rounded,
                  color: theme.colorScheme.primary,
                  size: widget.size * 0.7,
                )
              : null,
        ),
      ),
    );
  }
}
