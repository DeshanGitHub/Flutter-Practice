import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_animations/animations/explicit_animations/home_page_animation.dart';
import 'package:flutter_animations/animations/grid_transition/grid_home_page.dart';
// ignore: unused_import
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
    return MaterialApp(
      home: Scaffold(
        // body: AnimatedContainerDemo(),
        // body: AnimatedBoxDemo(),
        // body: HomePageAnimationDemo(),
        body: GridHomePage(),
      ),
    );
  }
}
