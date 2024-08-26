import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NewStay',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _names = [
    'newstay',
    'lightstream',
    'mainbrake',
    'graypine',
    'brightmoon',
    'swiftwave',
    'quickdraw',
    'dreamfall'
  ];

  String _generatedName = '';

  void _generateName() {
    setState(() {
      _generatedName = _names[Random().nextInt(_names.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NewStay'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Generated Name:',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              _generatedName,
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _generateName,
              child: Text('Generate New Name'),
            ),
          ],
        ),
      ),
    );
  }
}
