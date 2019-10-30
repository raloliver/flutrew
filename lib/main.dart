import 'package:flutter/material.dart';

class Flutrew extends StatelessWidget {
  double num1 = 0.0;
  double num2 = 0.0;

  @override
  Widget build(BuildContext context) {
    TextField firstNumInput = new TextField(
      decoration: InputDecoration(
        labelText: 'Number One',
      ),
      keyboardType: TextInputType.number,
      onChanged: (source) {
        try {
          num1 = double.parse(source);
        } catch (exc) {
          num1 = 0.0;
        }
      },
    );
    TextField secondNumInput = new TextField(
      decoration: InputDecoration(
        labelText: 'Number One',
      ),
      keyboardType: TextInputType.number,
      onChanged: (source) {
        try {
          num2 = double.parse(source);
        } catch (exc) {
          num2 = 0.0;
        }
      },
    );

    RaisedButton calcButton = new RaisedButton(
      
    );
  }
}