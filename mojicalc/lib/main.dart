import 'package:flutter/material.dart';
import 'package:mojicalc/widgets/button.dart';
import 'package:mojicalc/widgets/num_button.dart';

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
            NumButton('7', onPressed: (n) {}),
            NumButton('8', onPressed: (n) {}),
            NumButton('9', onPressed: (n) {}),
            Button('x', onPressed: () {}),
          ],
        ),
        Row(
          children: <Widget>[
            NumButton('4', onPressed: (n) {}),
            NumButton('5', onPressed: (n) {}),
            NumButton('6', onPressed: (n) {}),
            Button('-', onPressed: () {}),
          ],
        ),
        Row(
          children: <Widget>[
            NumButton('1', onPressed: (n) {}),
            NumButton('2', onPressed: (n) {}),
            NumButton('3', onPressed: (n) {}),
            Button('+', onPressed: () {}),
          ],
        ),
        Row(
          children: <Widget>[
            NumButton('0', flex: 2, onPressed: (n) {}),
            NumButton('.', onPressed: (n) {}),
            Button('=', onPressed: () {}),
          ],
        ),
      ],
    );
  }
}
