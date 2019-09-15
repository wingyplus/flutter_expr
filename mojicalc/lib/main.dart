import 'package:flutter/material.dart';

void main() => runApp(Calculator());

/// Calculator is main app for mojicalc.
class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(child: CalculationResult(), flex: 1),
              Expanded(child: NumPad(), flex: 3),
            ],
          ),
        ),
      ),
    );
  }
}

// Display a result after touch on NumPad.
class CalculationResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text(
          '0',
          style: TextStyle(
            fontSize: 80,
          ),
        ),
      ],
    );
  }
}

class NumPad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          children: <Widget>[
            Button('AC', onPressed: () {}),
            Button('+/-', onPressed: () {}),
            Button('%', onPressed: () {}),
            Button('/', onPressed: () {}),
          ],
        ),
        Row(
          children: <Widget>[
            Button('7', onPressed: () {}),
            Button('8', onPressed: () {}),
            Button('9', onPressed: () {}),
            Button('x', onPressed: () {}),
          ],
        ),
        Row(
          children: <Widget>[
            Button('4', onPressed: () {}),
            Button('5', onPressed: () {}),
            Button('6', onPressed: () {}),
            Button('-', onPressed: () {}),
          ],
        ),
        Row(
          children: <Widget>[
            Button('1', onPressed: () {}),
            Button('2', onPressed: () {}),
            Button('3', onPressed: () {}),
            Button('+', onPressed: () {}),
          ],
        ),
        Row(
          children: <Widget>[
            Button('0', flex: 2, onPressed: () {}),
            Button('.', onPressed: () {}),
            Button('=', onPressed: () {}),
          ],
        ),
      ],
    );
  }
}

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
