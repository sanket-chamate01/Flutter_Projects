import 'package:flutter/material.dart';
import 'package:dice/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          body: GradientContainer(Colors.amber.shade50, Colors.amber.shade200)),
    ),
  );
}
