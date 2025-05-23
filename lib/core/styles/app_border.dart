import 'package:flutter/material.dart';

class AppBorders {
  static Border bottomBorder(Color color) {
    return Border(
      bottom: BorderSide(
        color: color,
      ),
    );
  }

  static Border borderAll(Color color) {
    return Border.all(
      color: color,
    );
  }
}
