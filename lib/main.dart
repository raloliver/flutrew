import 'package:flutter/material.dart';

void main() => runApp(new FlutrewApp());

class FlutrewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutrew Calc',
      theme: new ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: new MainHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainHomePage extends StatefulWidget {
  @override
  _MainHomePageState createState() => new _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  double _num1 = 0.0;
  double _num2 = 0.0;
  double _sumResult = 0.0;
  double _subResult = 0.0;
  double _multResult = 0.0;
  double _divResult = 0.0;

  void _setNum1(String source) {
    setState(() {
      try {
        _num1 = double.parse(source);
        _sumResult = _num1 + _num2;
        _subResult = _num1 - _num2;
        _multResult = _num1 * _num2;
        _divResult = _num1 / _num2;
      } catch (exc) {}
    });
  }

  void _setNum2(String source) {
    setState(() {
      try {
        _num2 = double.parse(source);
        _sumResult = _num1 + _num2;
        _subResult = _num1 - _num2;
        _multResult = _num1 * _num2;
        _divResult = _num1 / _num2;
      } catch (exc) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Calc Flutrew'),
      ),
      body: new Container(
        padding: EdgeInsets.all(20.0),
        child: new Column(
          children: <Widget>[
            new TextField(
              decoration: new InputDecoration(
                labelText: 'Number One',
              ),
              keyboardType: TextInputType.number,
              onChanged: (source) => _setNum1(source),
            ),
            new TextField(
              decoration: InputDecoration(
                labelText: 'Number Two',
              ),
              keyboardType: TextInputType.number,
              onChanged: (source) => _setNum2(source),
            ),
            new Text(
              "sum = $_sumResult\nsub = $_subResult\nmult = $_multResult\ndiv = $_divResult",
              style: new TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
