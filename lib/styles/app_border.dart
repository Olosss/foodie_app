import 'package:flutter/material.dart';

class AppBorders {
  static const BorderSide borderSide = BorderSide(
    color: Colors.blue,
    width: 2.0,
  );
  static const Border outlinedBorder = Border(
    top: borderSide,
    left: borderSide,
    right: borderSide,
    bottom: borderSide,
  );
  static const BoxDecoration outlinedDecoration = BoxDecoration(
    border: outlinedBorder,
    borderRadius: BorderRadius.all(
      Radius.circular(
        8.0,
      ),
    ),
  );
}
