import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 87, 52, 148),
          Color.fromARGB(255, 161, 39, 218),
        ),
      ),
    ),
  );
}
