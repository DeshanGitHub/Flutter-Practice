import 'package:flutter/material.dart';
import 'package:flutter_animations/animations/implicit_animations/animated_box.dart';
// ignore: unused_import
import 'package:flutter_animations/animations/implicit_animations/animated_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        // body: AnimatedContainerDemo(),
        body: AnimatedBoxDemo(),
      ),
    );
  }
}
