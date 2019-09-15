import 'package:flutter/material.dart';
import 'package:mojicalc/widgets/button.dart';

typedef NumButtonCallback = void Function(String);

/// OperatorButton is a button for number.
class OperatorButton extends StatelessWidget {
  final String label;
  final NumButtonCallback onPressed;
  final int flex;

  OperatorButton(
    this.label, {
    Key key,
    this.flex = 1,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Button(
      this.label,
      color: const Color(0xFFA790FE),
      textColor: Colors.white,
      flex: this.flex,
      onPressed: () => this.onPressed(this.label),
    );
  }
}
