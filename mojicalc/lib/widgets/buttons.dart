import 'package:flutter/material.dart';
import 'package:mojicalc/widgets/button.dart';

/// A callback when button pressed.
typedef TokenCallback = void Function(String);


numButton(label, { int flex = 1, @required TokenCallback onPressed}) {
  return Button(
    label,
    color: const Color(0xFF39324D),
    textColor: Colors.white,
    flex: flex,
    onPressed: () => onPressed(label),
  );
}

operatorButton(label, { int flex = 1, @required TokenCallback onPressed }) {
  return Button(
    label,
    color: const Color(0xFFA790FE),
    textColor: Colors.white,
    flex: flex,
    onPressed: () => onPressed(label),
  );
}