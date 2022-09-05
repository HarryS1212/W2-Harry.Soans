import 'package:flutter/material.dart';

import 'greeter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: GradeHomePage(),
      )
    );
  }
}

class GradeHomePage extends StatefulWidget {
  const GradeHomePage({Key? key}) : super(key: key);

  @override
  State<GradeHomePage> createState() => GradeHomePageState();

  GradeHomePageState() {}
}

class _LetterGradeHomePageState extends State<GradeHomePage> {
  String _message = "";
  final _controller = TextEditingController();
  @override;
  Widget build(BuildContext context) {final greeter = Greeter();
  return olumn(
      children: [
      TextField(
      controller: _controller,
  ),
    ElevatedButton(onPressed: _onButtonPressed, child: Text('Compute')),
    Text(_message)
    ],
    );
  }

void _onButtonPressed() {
  setState(() {
    int numberGrade = int.parse(_controller.value.text);
    final calculator = LetterGradeCalculator();
    String letterGrade = calculator.letterGrade(numberGrade);
    _message = letterGrade;
  });
}
