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
  double num1 = 0.0;
  double num2 = 0.0;

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
              onChanged: (source) {
                try {
                  num1 = double.parse(source);
                } catch (exc) {
                  num1 = 0.0;
                }
              },
            ),
            new TextField(
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
            ),
            new RaisedButton(
              child: new Text('Calc'),
              onPressed: () {
                double sum = num1 + num2;
                double sub = num1 - num2;
                double mult = num1 * num2;
                double div = num1 / num2;
                showDialog(
                  context: context,
                  builder: (context) => new AlertDialog(
                    title: new Text('Results'),
                    content: new Text(
                        'sum = $sum\nsub = $sub\nmult = $mult\ndiv = $div'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
