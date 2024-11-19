import 'package:flutter/material.dart';

class HomePageAnimationDemo extends StatefulWidget {
  const HomePageAnimationDemo({super.key});

  @override
  State<HomePageAnimationDemo> createState() => _HomePageAnimationDemoState();
}

class _HomePageAnimationDemoState extends State<HomePageAnimationDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> logoFadeAnimation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    logoFadeAnimation = Tween<double>(begin: 0, end: 1).animate(controller);
    controller.forward();

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeTransition(
            opacity: logoFadeAnimation,
            child: const FlutterLogo(
              size: 100.0,
            ),
          ),
        ],
      ),
    );
  }
}
