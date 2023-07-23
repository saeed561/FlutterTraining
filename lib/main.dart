import 'package:flutter/material.dart';
import 'package:first_app/GradianContainer.dart';

void main() {
  runApp(const MaterialApp(
      home: Scaffold(
    body: GradianContainer(
      Color.fromARGB(255, 85, 44, 155),
      Color(0xFF1B073D),
    ),
  )));
}
