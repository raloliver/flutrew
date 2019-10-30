import 'package:flutter/material.dart';

//entrypoint (bootstrap application)
void main() {
  runApp(new MaterialApp(
    title: 'Flutrew Calc',
    home: new Flutrew(),
    debugShowCheckedModeBanner: false,
  ));
}

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
        labelText: 'Number Two',
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
      child: new Text('Calc'),
      onPressed: () {
        double sum = num1 + num2;
        double sub = num1 - num2;
        double mult = num1 * num2;
        double div = num1 / num2;
        AlertDialog resultDialog = new AlertDialog(
          content:
              Text('Results: sum = $sum - sub = $sub - mult $mult - div $div'),
        );
        showDialog(context: context, child: resultDialog);
      },
    );

    Container container = new Container(
      padding: EdgeInsets.all(20.0),
      child: new Column(
        children: <Widget>[firstNumInput, secondNumInput, calcButton],
      ),
    );

    AppBar appBar = new AppBar(
      title: new Text('Calc Flutrew'),
    );

    Scaffold scaffold = new Scaffold(
      appBar: appBar,
      body: container,
    );

    return scaffold;
  }
}
