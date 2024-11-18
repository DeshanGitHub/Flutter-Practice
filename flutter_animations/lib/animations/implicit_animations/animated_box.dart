import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedBoxDemo extends StatefulWidget {
  const AnimatedBoxDemo({super.key});

  @override
  State<AnimatedBoxDemo> createState() => _AnimatedBoxDemoState();
}

class _AnimatedBoxDemoState extends State<AnimatedBoxDemo> {
  bool _isExpanded = false;

  // Random number generator for random properties
  final Random _random = Random();

  // Initial properties
  double _width = 100.0;
  double _height = 100.0;
  Color _color = Colors.red;
  double _borderRadius = 0.0;
  Alignment _alignment = Alignment.center;

  // Method to toggle the box state
  void _toggleBox() {
    setState(() {
      _isExpanded = !_isExpanded;
      _width = _isExpanded ? 200.0 : 100.0;
      _height = _isExpanded ? 200.0 : 100.0;
      _color = _isExpanded ? Colors.blue : Colors.red;
      _borderRadius = _isExpanded ? 50.0 : 0.0;
      _alignment = _isExpanded ? Alignment.bottomRight : Alignment.topLeft;
    });
  }

  // Method to randomize properties
  void _randomizeProperties() {
    setState(() {
      _width = 100.0 + _random.nextInt(200);
      _height = 100.0 + _random.nextInt(200);
      _color = Color.fromRGBO(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        1,
      );
      _borderRadius = _random.nextDouble() * 100;
      _alignment = Alignment(
        _random.nextDouble() * 2 - 1,
        _random.nextDouble() * 2 - 1,
      );
    });
  }

  // Method to reset properties
  void _resetProperties() {
    setState(() {
      _width = 100.0;
      _height = 100.0;
      _color = Colors.red;
      _borderRadius = 0.0;
      _alignment = Alignment.center;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: _toggleBox,
            child: AnimatedContainer(
              alignment: _alignment,
              duration: const Duration(seconds: 1),
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(_borderRadius),
                color: _color,
              ),
              child: const FlutterLogo(size: 50),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _randomizeProperties,
            child: const Text('Randomize Properties'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: _resetProperties,
            child: const Text('Reset Properties'),
          )
        ],
      ),
    );
  }
}
