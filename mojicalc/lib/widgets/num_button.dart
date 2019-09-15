import 'package:flutter/material.dart';
import 'package:mojicalc/widgets/button.dart';

typedef NumButtonCallback = void Function(String);

/// NumButton is a button for number.
class NumButton extends StatelessWidget {
  final String label;
  final NumButtonCallback onPressed;
  final int flex;

  NumButton(
    this.label, {
    Key key,
    this.flex = 1,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Button(
      this.label,
      color: const Color(0xFF39324D),
      textColor: Colors.white,
      flex: this.flex,
      onPressed: () => this.onPressed(this.label),
    );
  }
}
