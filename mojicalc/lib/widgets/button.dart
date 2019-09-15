import 'package:flutter/material.dart';

/// A wrapper button used in NumPad.
class Button extends StatelessWidget {
  final VoidCallback onPressed;
  final int flex;
  final String label;
  final Color color;
  final Color textColor;

  final double _paddingSize = 40;

  Button(
    this.label, {
    Key key,
    this.flex = 1,
    this.color = Colors.black,
    this.textColor = Colors.white,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        color: this.color,
        textColor: this.textColor,
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
