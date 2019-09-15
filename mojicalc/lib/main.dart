import 'package:flutter/material.dart';
import 'package:mojicalc/widgets/button.dart';
import 'package:mojicalc/widgets/buttons.dart';

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
            commandButton('AC', onPressed: (cmd) {}),
            commandButton('+/-', onPressed: (cmd) {}),
            commandButton('%', onPressed: (cmd) {}),
            operatorButton('/', onPressed: (op) {}),
          ],
        ),
        Row(
          children: <Widget>[
            numButton('7', onPressed: (n) {}),
            numButton('8', onPressed: (n) {}),
            numButton('9', onPressed: (n) {}),
            operatorButton('x', onPressed: (op) {}),
          ],
        ),
        Row(
          children: <Widget>[
            numButton('4', onPressed: (n) {}),
            numButton('5', onPressed: (n) {}),
            numButton('6', onPressed: (n) {}),
            operatorButton('-', onPressed: (op) {}),
          ],
        ),
        Row(
          children: <Widget>[
            numButton('1', onPressed: (n) {}),
            numButton('2', onPressed: (n) {}),
            numButton('3', onPressed: (n) {}),
            operatorButton('+', onPressed: (op) {}),
          ],
        ),
        Row(
          children: <Widget>[
            numButton('0', flex: 2, onPressed: (n) {}),
            numButton('.', onPressed: (n) {}),
            equalButton('=', onPressed: (eq) {}),
          ],
        ),
      ],
    );
  }
}
