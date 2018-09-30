import 'package:flutter/material.dart';
import 'package:enhetskonverterare/category_route.dart';

/// The function that is called when main.dart is run.
void main() => runApp(EnhetsKonverterareApp());

class EnhetsKonverterareApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: CategoryRoute(),
    );
  }
}