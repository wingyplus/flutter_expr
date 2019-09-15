import 'package:flutter/material.dart';

/// A wrapper button used in NumPad.
class Button extends StatelessWidget {
  final VoidCallback onPressed;
  final int flex;
  final String label;

  final double _paddingSize = 40;

  Button(
    this.label, {
    Key key,
    this.flex = 1,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: MaterialButton(
        padding: EdgeInsets.only(top: _paddingSize, bottom: _paddingSize),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Text(
          label,
          style: TextStyle(fontSize: 30),
        ),
        onPressed: () {
          onPressed();
        },
      ),
    );
  }
}
