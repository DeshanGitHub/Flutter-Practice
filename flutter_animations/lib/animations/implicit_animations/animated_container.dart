import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({super.key});

  @override
  State<AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          height: _isExpanded ? 200 : 100,
          width: _isExpanded ? 200 : 100,
          color: _isExpanded ? Colors.yellow : Colors.red,
          curve: Curves.easeInOut,
          child: const Center(
            child: Text("Flutter"),
          ),
        ),
      ),
    );
  }
}
