import 'package:flutter/material.dart';

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppBarExample(),
    );
  }
}

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text('NursingHelp'),
      actions: <Widget>[
        TextButton(
          style: style,
          onPressed: () {},
          child: const Text('Necesidades'),
        ),
        TextButton(
          style: style,
          onPressed: () {},
          child: const Text('Patrones'),
        ),
      ],
    ));
  }
}
