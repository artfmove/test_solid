import 'package:flutter/material.dart';
import './paint.dart';
import 'adaptive.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solid Test',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color backgroundColor = Paint.generateRandomRGBColor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Adaptive().appBar('Solid test'),
      body: GestureDetector(
        onTap: () =>
            setState(() => backgroundColor = Paint.generateRandomRGBColor()),
        child: Container(
          color: backgroundColor,
          child: Center(
            child: Text(
              'Hey there',
            ),
          ),
        ),
      ),
    );
  }
}
