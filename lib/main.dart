import 'package:flutter/material.dart';
import 'package:first_project/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.yellow,
                Color.fromARGB(255, 121, 224, 219),
                Color.fromARGB(255, 136, 48, 107),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
