import 'package:flutter/material.dart';

/// A widget that displays an error message.
///
/// This widget is designed to show error messages in a consistent style based
/// on the current theme. It takes an optional `error` object and an optional
/// `message` string. If `error` is provided, the `_mapErrorToMessage` method
/// will be used to generate a message based on the error. If `_mapErrorToMessage`
/// returns `null`, the widget will fall back to the `message` string if provided.
/// If neither is available, it will display a default message of 'Unknown error'.
class ErrorContent extends StatelessWidget {
  const ErrorContent({
    super.key,
    this.message,
    this.error,
  });

  /// The error object that may be used to generate an error message.
  /// This parameter is optional.
  final Object? error;

  /// A custom error message to be displayed. This parameter is optional.
  final String? message;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Center(
      child: Text(
        _mapErrorToMessage(error) ?? message ?? 'Unknown error',
        style: theme.inputDecorationTheme.errorStyle,
      ),
    );
  }

  String? _mapErrorToMessage(Object? error) {
    ///TODO Add explicit error checking by type
    return null;
  }
}
