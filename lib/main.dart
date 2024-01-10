import 'package:flutter/material.dart';
import './gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: CustomWidget(
          colors: [
            Color.fromARGB(255, 0, 123, 255),
            Color.fromARGB(207, 142, 34, 163)
          ],
        ),
      ),
    ),
  );
}
